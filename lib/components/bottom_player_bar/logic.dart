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

  void _setInitialPlaylist() async {
    const prefix = 'https://www.soundhelix.com/examples/mp3';
    final song1 = Uri.parse(
        'https://m804.music.126.net/20230809234437/b788ab90fe3ea58af13e0b8ef003890b/jdyyaac/obj/w5rDlsOJwrLDjj7CmsOj/13385789410/e12f/a3da/d2cc/f62766d7d310c9de4ce6132038bd5d4a.m4a?authSecret=00000189dae1c90617e10aa468411899');
    final song2 = Uri.parse(
        'https://m804.music.126.net/20230809230951/8bca130294c2260f914dc6bfc72457f3/jdyyaac/obj/w5rDlsOJwrLDjj7CmsOj/22259911164/18da/9d0e/fc66/dece383a639f3912920d3994e639b2fb.m4a?authSecret=00000189dac1f4c105670aa4682b12cc');
    final song3 = Uri.parse('$prefix/SoundHelix-Song-3.mp3');

    _playlist = ConcatenatingAudioSource(children: [
      // AudioSource.asset('assets/music/demo.m4a', tag: '1927134910'),
      AudioSource.uri(song1, tag: '1927134910'),
      AudioSource.uri(song2, tag: '25882976'),
      AudioSource.uri(song3, tag: 'Song 3'),
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

    List<AudioSource> audioSourceList = [];

    songList.forEach((element) {
      if (element.songSourceType == SongSourceType.network) {
        audioSourceList
            .add(AudioSource.uri(Uri.parse(element.path), tag: element.wyyId));
      } else {
        audioSourceList.add(AudioSource.file(element.path, tag: element.wyyId));
      }
    });

    _playlist = ConcatenatingAudioSource(children: audioSourceList);
    _audioPlayer.setAudioSource(_playlist);
  }
}
