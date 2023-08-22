import 'package:iron/common/models/Song.dart';

class SongDataExample {
  List<Song> loadSongs() {
    List<Song> songList = [
      Song()
        ..songSourceType = SongSourceType.network
        ..wyyId = '2061039360'
        ..trackName = '我们都拥有海洋 (哔哩哔哩2023毕业歌)'
        ..albumName = '我们都拥有海洋 (哔哩哔哩2023毕业歌)'
        ..albumImageUrl = 'http://p2.music.126.net/vN50z_tg7JwffH0_zGdGxA==/109951168715902739.jpg?param=400y400'
        ..artistNames = ['吴青峰'],
      Song()
        ..songSourceType = SongSourceType.network
        ..wyyId = '1927134910'
        ..trackName = '回忆旅行'
        ..albumName = '回忆旅行'
        ..artistIDs = ['12140120']
        ..albumImageUrl = 'http://p1.music.126.net/Dzq7Ek9-ikTtQCQeLZXV6g==/109951167134950700.jpg?param=400y400'
        ..artistNames = ['树 Itsuki'],
      Song()
        ..songSourceType = SongSourceType.network
        ..wyyId = '33410937'
        ..trackName = 'Force of Nature'
        ..albumName = 'Not an Apology'
        ..albumImageUrl = 'http://p1.music.126.net/L17iiSYgW1euAmbIMzmn8g==/2892815094125041.jpg?param=400y400'
        ..artistNames = ['Bea Miller'],
      Song()
        ..songSourceType = SongSourceType.network
        ..wyyId = '25882976'
        ..trackName = 'Live While We\'re Young'
        ..albumName = 'Take Me Home'
        ..albumImageUrl = 'http://p2.music.126.net/AWFCKGo1ST-OMXZ0nFDwJQ==/109951165967134415.jpg?param=400y400'
        ..artistNames = ['One Direction'],
      Song()
        ..songSourceType = SongSourceType.network
        ..wyyId = '1815684465'
        ..trackName = 'Rubia'
        ..albumName = 'Rubia'
        ..albumImageUrl = 'http://p2.music.126.net/499AYZ3epP1T7GJYvnJZZQ==/109951165671947083.jpg?param=400y400'
        ..artistNames = ['周深'],
      Song()
        ..songSourceType = SongSourceType.network
        ..wyyId = '436346833'
        ..trackName = '凄美地'
        ..albumName = '飞行器的执行周期'
        ..albumImageUrl = 'http://p1.music.126.net/wSMfGvFzOAYRU_yVIfquAA==/2946691248081599.jpg?param=400y400'
        ..artistNames = ['郭顶'],
      Song()
        ..songSourceType = SongSourceType.network
        ..wyyId = '441491828'
        ..trackName = '水星记'
        ..albumName = '飞行器的执行周期'
        ..albumImageUrl = 'http://p1.music.126.net/wSMfGvFzOAYRU_yVIfquAA==/2946691248081599.jpg?param=400y400'
        ..artistNames = ['郭顶'],
      Song()
        ..songSourceType = SongSourceType.network
        ..wyyId = '2059532170'
        ..trackName = '流沙 (Reimagined)'
        ..albumName = '流沙 (Reimagined)'
        ..albumImageUrl = 'http://p1.music.126.net/RHvOnjS6lxCxRRXlH1FjIw==/109951168704179066.jpg?param=400y400'
        ..artistNames = ['陶喆'],
      Song()
        ..songSourceType = SongSourceType.network
        ..wyyId = '2061681659'
        ..trackName = 'Pet'
        ..albumName = 'PET'
        ..albumImageUrl = 'http://p2.music.126.net/8592UX67UjpPN_SXP1biog==/109951168729414039.jpg?param=400y400'
        ..artistNames = ['渡口']
    ];
    return songList;
  }
}
