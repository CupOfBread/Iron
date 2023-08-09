import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get_it/get_it.dart';
import 'package:iron/common/models/Album.dart';
import 'package:iron/common/models/Artist.dart';
import 'package:iron/common/models/Song.dart';
import 'package:iron/router/app_pages.dart';
import 'package:isar/isar.dart';
import 'package:just_audio/just_audio.dart';

import 'package:iron/common/values/AlbumDataExample.dart';
import 'package:iron/common/values/ArtistDataExample.dart';
import 'package:iron/common/values/SongDataExample.dart';
import 'state.dart';

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

  //当前播放音乐
  final currentSongNotifier = ValueNotifier<Song>(Song());

  //播放按键
  final playerPlayButtonNotifier =
      ValueNotifier<PlayerState>(PlayerState.paused);

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

  late AudioPlayer _audioPlayer;
  late ConcatenatingAudioSource _playlist;

  BottomPlayerBarLogic() {
    _init();
  }

  void _init() async {
    _audioPlayer = AudioPlayer();
    // await AudioPlayer.clearAssetCache();
    _setInitialPlaylist();

    _listenForChangesInPlayerPosition();
    _listenForChangesInBufferedPosition();
    _listenForChangesInTotalDuration();
    _listenForChangesInPlayerState();
    _listenForChangesInSequenceState();
  }

  Future<String> getSongPlayUrl(String songId) async {
    final dio = Dio();
    String originUrl =
        'https://music.163.com/song/media/outer/url?id=' + songId + '.mp3';
    final response = await dio.get(originUrl);
    return response.redirects.first.location
        .toString()
        .replaceAll("http", "https");
  }

  void _setInitialPlaylist() async {
    final song1 = Uri.parse(await getSongPlayUrl('1927134910'));
    final song2 = Uri.parse(await getSongPlayUrl('25882976'));

    _playlist = ConcatenatingAudioSource(children: [
      AudioSource.uri(song1, tag: '1927134910'),
      AudioSource.uri(song2, tag: '25882976'),
    ]);
    await _audioPlayer.setAudioSource(_playlist);
  }

  void _listenForChangesInPlayerState() {
    _audioPlayer.playerStateStream.listen((playerState) {
      final isPlaying = playerState.playing;
      final processingState = playerState.processingState;
      if (processingState == ProcessingState.loading ||
          processingState == ProcessingState.buffering) {
        playerPlayButtonNotifier.value = PlayerState.loading;
      } else if (!isPlaying) {
        playerPlayButtonNotifier.value = PlayerState.paused;
      } else if (processingState != ProcessingState.completed) {
        playerPlayButtonNotifier.value = PlayerState.playing;
      } else {
        _audioPlayer.seek(Duration.zero);
        _audioPlayer.pause();
      }
    });
  }

  void _listenForChangesInPlayerPosition() {
    _audioPlayer.positionStream.listen((position) {
      final oldState = progressNotifier.value;
      progressNotifier.value = ProgressBarState(
        current: position,
        buffered: oldState.buffered,
        total: oldState.total,
      );
    });
  }

  void _listenForChangesInBufferedPosition() {
    _audioPlayer.bufferedPositionStream.listen((bufferedPosition) {
      final oldState = progressNotifier.value;
      progressNotifier.value = ProgressBarState(
        current: oldState.current,
        buffered: bufferedPosition,
        total: oldState.total,
      );
    });
  }

  void _listenForChangesInTotalDuration() {
    _audioPlayer.durationStream.listen((totalDuration) {
      final oldState = progressNotifier.value;
      progressNotifier.value = ProgressBarState(
        current: oldState.current,
        buffered: oldState.buffered,
        total: totalDuration ?? Duration.zero,
      );
    });
  }

  void _listenForChangesInSequenceState() {
    _audioPlayer.sequenceStateStream.listen((sequenceState) async {
      if (sequenceState == null) return;

      // update current song title
      final currentItem = sequenceState.currentSource;

      final String currentSongId = currentItem?.tag;

      final currentSong = await isar.songs
              .filter()
              .wyyIdEqualTo(currentSongId)
              .or()
              .ironIdEqualTo(currentSongId)
              .or()
              .idEqualTo(int.parse(currentSongId))
              .findFirst() ??
          Song();

      // update current song
      currentSongNotifier.value = currentSong;

      // update playlist
      final playlist = sequenceState.effectiveSequence;
      final titles = playlist.map((item) => item.tag as String).toList();
      playlistNotifier.value = titles;

      // update shuffle mode
      isShuffleModeEnabledNotifier.value = sequenceState.shuffleModeEnabled;

      // update previous and next buttons
      if (playlist.isEmpty || currentItem == null) {
        isFirstSongNotifier.value = true;
        isLastSongNotifier.value = true;
      } else {
        isFirstSongNotifier.value = playlist.first == currentItem;
        isLastSongNotifier.value = playlist.last == currentItem;
      }
    });
  }

  void play() {
    _audioPlayer.play();
    playerPlayButtonNotifier.value = PlayerState.playing;
  }

  void pause() {
    _audioPlayer.pause();
    playerPlayButtonNotifier.value = PlayerState.paused;
  }

  void seek(Duration position) {
    _audioPlayer.seek(position);
  }

  void onPreviousSongButtonPressed() {
    _audioPlayer.seekToPrevious();
  }

  void onNextSongButtonPressed() {
    _audioPlayer.seekToNext();
  }

  void onShuffleButtonPressed() async {
    final enable = !_audioPlayer.shuffleModeEnabled;
    if (enable) {
      await _audioPlayer.shuffle();
    }
    await _audioPlayer.setShuffleModeEnabled(enable);
  }

  void roteToPlayerPage() {
    Get.toNamed(AppRoutes.Player);
  }

  Future<void> loadExampleData() async {
    final isar = GetIt.I<Isar>();
    await isar.writeTxn(() async {
      await isar.songs.putAll(SongDataExample().loadSongs());
    });

    await isar.writeTxn(() async {
      await isar.artists.putAll(ArtistDataExample().loadArtist());
    });

    await isar.writeTxn(() async {
      await isar.albums.putAll(AlbumDataExample().loadAlbums());
    });
  }

  void loadNewPlaylist(List<String> songIdList) async {
    List<Song> songList = await isar.songs
        .filter()
        .anyOf(
            songIdList,
            (q, element) => q
                .wyyIdEqualTo(element)
                .or()
                .ironIdEqualTo(element)
                .idEqualTo(int.parse(element)))
        .findAll();

    if (songIdList.isNotEmpty) {
      //先处理第一首歌曲
      if (songList[0].songSourceType == SongSourceType.network) {
        AudioSource audioSource = AudioSource.uri(
            Uri.parse(await getSongPlayUrl(songList[0].wyyId)),
            tag: songList[0].wyyId);

        _playlist = ConcatenatingAudioSource(children: [audioSource]);
        _audioPlayer.setAudioSource(_playlist);
      }

      if (songIdList.length > 1) {
        for (var i = 1; i < songList.length; i++) {
          if (songList[i].songSourceType == SongSourceType.network) {
            _playlist.add(AudioSource.uri(
                Uri.parse(await getSongPlayUrl(songList[i].wyyId)),
                tag: songList[i].wyyId));
          } else {
            _playlist.add(
                AudioSource.file(songList[i].path, tag: songList[i].wyyId));
          }
        }
      }
    }
  }
}
