import 'package:audio_service/audio_service.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:iron/common/models/Song.dart';
import 'package:isar/isar.dart';
import 'package:just_audio/just_audio.dart';

Future<AudioHandler> initAudioService() async {
  return await AudioService.init(
    builder: () => MyAudioHandler(),
    config: const AudioServiceConfig(
      androidNotificationChannelId: 'com.tystudio.ironmusic.audio',
      androidNotificationChannelName: 'Iron Music',
      androidNotificationOngoing: true,
      androidStopForegroundOnPause: true,
    ),
  );
}

class MyAudioHandler extends BaseAudioHandler with QueueHandler, SeekHandler {
  final dio = Dio();
  final isar = GetIt.I<Isar>();
  final _player = AudioPlayer();
  final _playlist = ConcatenatingAudioSource(children: []);

  MyAudioHandler() {
    _setInitialPlaylist();
    _notifyAudioHandlerAboutPlaybackEvents();
    _listenForDurationChanges();
    _listenForSequenceStateChanges();
  }

  void _setInitialPlaylist() async {
    final song1 = Uri.parse(await getWyySongPlayUrl('1927134910'));
    final song2 = Uri.parse(await getWyySongPlayUrl('25882976'));

    _playlist.add(AudioSource.uri(song1, tag: '1927134910'));
    _playlist.add(AudioSource.uri(song2, tag: '25882976'));

    await _player.setAudioSource(_playlist);
  }

  void _notifyAudioHandlerAboutPlaybackEvents() {
    _player.playbackEventStream.listen((PlaybackEvent event) {
      final playing = _player.playing;
      playbackState.add(playbackState.value.copyWith(
        controls: [
          MediaControl.skipToPrevious,
          if (playing) MediaControl.pause else MediaControl.play,
          MediaControl.stop,
          MediaControl.skipToNext,
        ],
        systemActions: const {
          MediaAction.seek,
        },
        androidCompactActionIndices: const [0, 1, 3],
        processingState: const {
          ProcessingState.idle: AudioProcessingState.idle,
          ProcessingState.loading: AudioProcessingState.loading,
          ProcessingState.buffering: AudioProcessingState.buffering,
          ProcessingState.ready: AudioProcessingState.ready,
          ProcessingState.completed: AudioProcessingState.completed,
        }[_player.processingState]!,
        repeatMode: const {
          LoopMode.off: AudioServiceRepeatMode.none,
          LoopMode.one: AudioServiceRepeatMode.one,
          LoopMode.all: AudioServiceRepeatMode.all,
        }[_player.loopMode]!,
        shuffleMode: (_player.shuffleModeEnabled) ? AudioServiceShuffleMode.all : AudioServiceShuffleMode.none,
        playing: playing,
        updatePosition: _player.position,
        bufferedPosition: _player.bufferedPosition,
        speed: _player.speed,
        queueIndex: event.currentIndex,
      ));
    });
  }

  void _listenForDurationChanges() {
    _player.durationStream.listen((duration) {
      var index = _player.currentIndex;
      final newQueue = queue.value;
      if (index == null || newQueue.isEmpty) return;
      if (_player.shuffleModeEnabled) {
        index = _player.shuffleIndices!.indexOf(index);
      }
      final oldMediaItem = newQueue[index];
      final newMediaItem = oldMediaItem.copyWith(duration: duration);
      newQueue[index] = newMediaItem;
      queue.add(newQueue);
      mediaItem.add(newMediaItem);
    });
  }

  void _listenForSequenceStateChanges() {
    _player.sequenceStateStream.listen((SequenceState? sequenceState) async {
      final sequence = sequenceState?.effectiveSequence;
      if (sequence == null || sequence.isEmpty) return;
      List<MediaItem> mediaItemList = [];

      for (var value in sequence) {
        final currentSong =
            await isar.songs.filter().wyyIdEqualTo(value.tag).or().ironIdEqualTo(value.tag).or().idEqualTo(int.parse(value.tag)).findFirst() ??
                Song();
        mediaItemList.add(
            MediaItem(id: value.tag, title: currentSong.trackName, artUri: Uri.parse(currentSong.albumImageUrl), artist: currentSong.artistNames[0]));
      }

      queue.add(mediaItemList);
    });
  }

  @override
  Future<void> play() => _player.play();

  @override
  Future<void> pause() => _player.pause();

  @override
  Future<void> seek(Duration position) => _player.seek(position);

  @override
  Future<void> skipToNext() => _player.seekToNext();

  @override
  Future<void> skipToPrevious() => _player.seekToPrevious();

  @override
  Future<void> stop() async {
    await _player.stop();
    return super.stop();
  }

  @override
  Future<void> updateQueue(List<MediaItem> queue) async {
    List<Song> songList = await isar.songs
        .filter()
        .anyOf(queue, (q, element) => q.wyyIdEqualTo(element.id).or().ironIdEqualTo(element.id).idEqualTo(int.parse(element.id)))
        .findAll();

    if (songList.isNotEmpty) {
      //先处理第一首歌曲
      if (songList[0].songSourceType == SongSourceType.network) {
        final String playUrl = await getWyySongPlayUrl(songList[0].wyyId);
        AudioSource audioSource = AudioSource.uri(Uri.parse(playUrl), tag: songList[0].wyyId);

        await _playlist.clear();
        await _playlist.add(audioSource);
        _player.play();
      }

      if (songList.length > 1) {
        for (var i = 1; i < songList.length; i++) {
          if (songList[i].songSourceType == SongSourceType.network) {
            await _playlist.add(AudioSource.uri(Uri.parse(await getWyySongPlayUrl(songList[i].wyyId)), tag: songList[i].wyyId));
          } else {
            await _playlist.add(AudioSource.file(songList[i].path, tag: songList[i].wyyId));
          }
        }
      }
    }
  }

  Future<String> getWyySongPlayUrl(String songId) async {
    String originUrl = 'https://music.163.com/song/media/outer/url?id=' + songId + '.mp3';
    final response = await dio.get(originUrl);
    return response.redirects.first.location.toString().replaceAll("http", "https");
  }
}
