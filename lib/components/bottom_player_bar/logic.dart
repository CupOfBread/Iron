import 'package:audio_service/audio_service.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get_it/get_it.dart';
import 'package:isar/isar.dart';

import 'package:iron/services/global_value.dart';
import 'state.dart';
import 'package:iron/common/models/Song.dart';
import 'package:iron/router/app_pages.dart';

enum PlayerState { paused, playing, loading }

class ProgressBarState {
  ProgressBarState({
    required this.current,
    required this.buffered,
    required this.total,
  });

  final Duration current;
  final Duration buffered;
  final Duration total;
}

class BottomPlayerBarLogic extends GetxController {
  final BottomPlayerBarState state = BottomPlayerBarState();
  final isar = GetIt.I<Isar>();
  final dio = Dio();
  final GLOBAL_VALUE = GetIt.I<GlobalValue>();

  //当前播放音乐
  final currentSongNotifier = ValueNotifier<Song>(Song());

  //当前音乐歌词
  final currentSongLyricNotifier = ValueNotifier<String>('');

  //播放按键
  final playerPlayButtonNotifier = ValueNotifier<PlayerState>(PlayerState.paused);

  //进度条
  final progressNotifier = ValueNotifier<ProgressBarState>(
    ProgressBarState(
      current: Duration.zero,
      buffered: Duration.zero,
      total: Duration.zero,
    ),
  );
  final playlistNotifier = ValueNotifier<List<String>>([]);

  final isShuffleModeEnabledNotifier = ValueNotifier<bool>(false);
  final isFirstSongNotifier = ValueNotifier<bool>(true);
  final isLastSongNotifier = ValueNotifier<bool>(true);

  final AudioHandler _audioHandler = GetIt.I<AudioHandler>();

  BottomPlayerBarLogic() {
    _init();
  }

  void _init() async {
    _listenForChangesInPlayerPosition();
    _listenForChangesInPlayerState();
    _listenToChangesInSong();
    _listenToTotalDuration();
    _listenToBufferedPosition();
    _listenToChangesInPlaylist();
  }

  void roteToPlayerPage() {
    Get.toNamed(AppRoutes.Player);
  }

  Future<String> getSongPlayUrl(String songId) async {
    String originUrl = 'https://music.163.com/song/media/outer/url?id=' + songId + '.mp3';
    final response = await dio.get(originUrl);
    return response.redirects.first.location.toString().replaceAll("http", "https");
  }

  void _listenForChangesInPlayerState() {
    _audioHandler.playbackState.listen((playbackState) {
      final isPlaying = playbackState.playing;
      final processingState = playbackState.processingState;
      if (processingState == AudioProcessingState.loading || processingState == AudioProcessingState.buffering) {
        playerPlayButtonNotifier.value = PlayerState.loading;
      } else if (!isPlaying) {
        playerPlayButtonNotifier.value = PlayerState.paused;
      } else if (processingState != AudioProcessingState.completed) {
        playerPlayButtonNotifier.value = PlayerState.playing;
      } else {
        _audioHandler.seek(Duration.zero);
        _audioHandler.pause();
      }
    });
  }

  void _listenForChangesInPlayerPosition() {
    AudioService.position.listen((position) {
      final oldState = progressNotifier.value;
      progressNotifier.value = ProgressBarState(
        current: position,
        buffered: oldState.buffered,
        total: oldState.total,
      );
    });
  }

  void _listenToTotalDuration() {
    _audioHandler.mediaItem.listen((mediaItem) {
      final oldState = progressNotifier.value;
      progressNotifier.value = ProgressBarState(
        current: oldState.current,
        buffered: oldState.buffered,
        total: mediaItem?.duration ?? Duration.zero,
      );
    });
  }

  void _listenToBufferedPosition() {
    _audioHandler.playbackState.listen((playbackState) {
      final oldState = progressNotifier.value;
      progressNotifier.value = ProgressBarState(
        current: oldState.current,
        buffered: playbackState.bufferedPosition,
        total: oldState.total,
      );
    });
  }

  void _listenToChangesInSong() {
    _audioHandler.mediaItem.listen((mediaItem) async {
      if (mediaItem == null) return;

      String currentSongId = mediaItem.id;

      final currentSong = await isar.songs
              .filter()
              .wyyIdEqualTo(currentSongId)
              .or()
              .ironIdEqualTo(currentSongId)
              .or()
              .idEqualTo(int.parse(currentSongId))
              .findFirst() ??
          Song();

      currentSongNotifier.value = currentSong;

      if (currentSong.wyyId != '') {
        final response = await dio.get('http://192.168.1.17:3000/lyric?id=$currentSongId');
        currentSongLyricNotifier.value = response.data['lrc']['lyric'];
      } else {
        currentSongLyricNotifier.value = '';
      }

      _updateSkipButtons();
    });
  }

  void _listenToChangesInPlaylist() {
    _audioHandler.queue.listen((playlist) {
      if (playlist.isEmpty) {
        playlistNotifier.value = [];
        currentSongNotifier.value = Song();
      } else {
        final newList = playlist.map((item) => item.id).toList();
        playlistNotifier.value = newList;
      }
      _updateSkipButtons();
    });
  }

  void _updateSkipButtons() {
    final mediaItem = _audioHandler.mediaItem.value;
    var playlist = _audioHandler.queue.value;

    if (playlist.length < 2 || mediaItem == null) {
      isFirstSongNotifier.value = true;
      isLastSongNotifier.value = true;
    } else {
      isFirstSongNotifier.value = playlist.first == mediaItem;
      isLastSongNotifier.value = playlist.last == mediaItem;
    }
  }

  void play() {
    _audioHandler.play();
    playerPlayButtonNotifier.value = PlayerState.playing;
  }

  void pause() {
    _audioHandler.pause();
    playerPlayButtonNotifier.value = PlayerState.paused;
  }

  void seek(Duration position) {
    _audioHandler.seek(position);
  }

  void onPreviousSongButtonPressed() {
    _audioHandler.skipToPrevious();
  }

  void onNextSongButtonPressed() {
    _audioHandler.skipToNext();
  }

  void onShuffleButtonPressed() async {
    final enable = !isShuffleModeEnabledNotifier.value;
    isShuffleModeEnabledNotifier.value = enable;
    if (enable) {
      _audioHandler.setShuffleMode(AudioServiceShuffleMode.all);
    } else {
      _audioHandler.setShuffleMode(AudioServiceShuffleMode.none);
    }
  }

  Future<void> loadNewPlaylist(List<String> songIdList) async {
    await _audioHandler.updateQueue(songIdList.map((e) => MediaItem(id: e, title: e)).toList());
    _updateSkipButtons();
  }

// Future<void> testLoadLocalSongs() async {
//   await Permission.storage.request();
//   await Permission.audio.request();
//
//   final myDir = Directory("""/storage/emulated/0/Music/Speak now""");
//
//   final List<FileSystemEntity> list = await myDir.list().toList();
//
//   AudioSource audioSource = AudioSource.file(list[3].path, tag: '2059793928');
//
//   _playlist = ConcatenatingAudioSource(children: [audioSource]);
//   _audioPlayer.setAudioSource(_playlist);
//
//   _audioPlayer.play();
//   playerPlayButtonNotifier.value = PlayerState.playing;
// }
}
