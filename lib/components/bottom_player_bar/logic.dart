import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:iron/common/models/Song.dart';
import 'package:iron/router/app_pages.dart';
import 'package:just_audio/just_audio.dart';

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
    final song2 = Uri.parse('$prefix/SoundHelix-Song-2.mp3');
    final song3 = Uri.parse('$prefix/SoundHelix-Song-3.mp3');

    _playlist = ConcatenatingAudioSource(children: [
      AudioSource.asset('assets/music/demo.m4a', tag: 'Song 1'),
      AudioSource.uri(song2, tag: 'Song 2'),
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
    _audioPlayer.sequenceStateStream.listen((sequenceState) {
      if (sequenceState == null) return;

      // update current song title
      final currentItem = sequenceState.currentSource;


      // final title = currentItem?.tag as String?;
      // currentSongNotifier.value.songTitle = title ?? '';

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
}
