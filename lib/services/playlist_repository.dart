import 'package:iron/common/models/Song.dart';

abstract class PlaylistRepository {
  Future<List<Song>> fetchInitialPlaylist();
  Future<Song> fetchAnotherSong();
}

class DemoPlaylist extends PlaylistRepository {
  @override
  Future<List<Song>> fetchInitialPlaylist(
      {int length = 3}) async {
    return List.generate(length, (index) => _nextSong());
  }

  @override
  Future<Song> fetchAnotherSong() async {
    return _nextSong();
  }

  var _songIndex = 0;
  static const _maxSongNumber = 16;

  Song _nextSong() {
    _songIndex = (_songIndex % _maxSongNumber) + 1;
    return Song()
      ..songSourceType = SongSourceType.network
      ..wyyId = '2059532170'
      ..trackName = '流沙 (Reimagined)'
      ..albumName = '流沙 (Reimagined)'
      ..albumImageUrl = 'http://p1.music.126.net/RHvOnjS6lxCxRRXlH1FjIw==/109951168704179066.jpg?param=400y400'
      ..artistNames = ['陶喆'];
  }
}