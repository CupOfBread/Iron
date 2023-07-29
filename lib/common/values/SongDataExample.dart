import '../models/Song.dart';

class SongDataExample {
  List<Song> loadSongs() {
    List<Song> songList = [
      Song()
        ..wyyId = '2061039360'
        ..albumName = '我们都拥有海洋 (哔哩哔哩2023毕业歌)'
        ..albumImageUrl =
            'http://p2.music.126.net/vN50z_tg7JwffH0_zGdGxA==/109951168715902739.jpg?param=300y300'
        ..artistNames = ['吴青峰'],
      Song()
        ..wyyId = '1927134910'
        ..albumName = '回忆旅行'
        ..albumImageUrl =
            'http://p1.music.126.net/Dzq7Ek9-ikTtQCQeLZXV6g==/109951167134950700.jpg?param=300y300'
        ..artistNames = ['树 Itsuki']
    ];
    return songList;
  }
}
