import 'package:iron/common/models/Song.dart';

class SongDataExample {
  List<Song> loadSongs() {
    List<Song> songList = [
      Song()
        ..songSourceType = SongSourceType.network
        ..wyyId = '2061039360'
        ..trackName = '我们都拥有海洋 (哔哩哔哩2023毕业歌)'
        ..albumName = '我们都拥有海洋 (哔哩哔哩2023毕业歌)'
        ..albumImageUrl =
            'http://p2.music.126.net/vN50z_tg7JwffH0_zGdGxA==/109951168715902739.jpg?param=300y300'
        ..artistNames = ['吴青峰'],
      Song()
        ..songSourceType = SongSourceType.network
        ..wyyId = '1927134910'
        ..trackName = '回忆旅行'
        ..albumName = '回忆旅行'
        ..artistIDs = ['12140120']
        ..albumImageUrl =
            'http://p1.music.126.net/Dzq7Ek9-ikTtQCQeLZXV6g==/109951167134950700.jpg?param=300y300'
        ..path='https://m804.music.126.net/20230809234437/b788ab90fe3ea58af13e0b8ef003890b/jdyyaac/obj/w5rDlsOJwrLDjj7CmsOj/13385789410/e12f/a3da/d2cc/f62766d7d310c9de4ce6132038bd5d4a.m4a?authSecret=00000189dae1c90617e10aa468411899'
        ..artistNames = ['树 Itsuki'],
      Song()
        ..songSourceType = SongSourceType.network
        ..wyyId = '185879'
        ..trackName = '听妈妈的话'
        ..albumName = '依然范特西'
        ..albumImageUrl =
            'http://p1.music.126.net/06Yhj36Qu3ZCQJklc9MNKg==/7980255395852522.jpg?param=300y300'
        ..artistNames = ['周杰伦'],
      Song()
        ..songSourceType = SongSourceType.network
        ..wyyId = '287242'
        ..trackName = '眼泪成诗'
        ..albumName = '完美的一天'
        ..albumImageUrl =
            'http://p2.music.126.net/fDHMWWX7pLkAxVPK10OQ7g==/109951168311119114.jpg?param=300y300'
        ..artistNames = ['孙燕姿'],
      Song()
        ..songSourceType = SongSourceType.network
        ..wyyId = '287244'
        ..trackName = '隐形人'
        ..albumName = '完美的一天'
        ..albumImageUrl =
            'http://p2.music.126.net/fDHMWWX7pLkAxVPK10OQ7g==/109951168311119114.jpg?param=300y300'
        ..artistNames = ['孙燕姿'],
      Song()
        ..songSourceType = SongSourceType.network
        ..wyyId = '185813'
        ..trackName = '阳光宅男'
        ..albumName = '我很忙'
        ..albumImageUrl =
            'http://p1.music.126.net/STWQpRLgUBOcXQIDPoEL_A==/109951163533011733.jpg?param=300y300'
        ..artistNames = ['周杰伦'],
      Song()
        ..songSourceType = SongSourceType.network
        ..wyyId = '417250561'
        ..trackName = '不该'
        ..albumName = '周杰伦的床边故事'
        ..albumImageUrl =
            'http://p2.music.126.net/cUTk0ewrQtYGP2YpPZoUng==/3265549553028224.jpg?param=300y300'
        ..artistNames = ['周杰伦'],
      Song()
        ..songSourceType = SongSourceType.network
        ..wyyId = '33410937'
        ..trackName = 'Force of Nature'
        ..albumName = 'Not an Apology'
        ..albumImageUrl =
            'http://p1.music.126.net/L17iiSYgW1euAmbIMzmn8g==/2892815094125041.jpg?param=300y300'
        ..artistNames = ['Bea Miller'],
      Song()
        ..songSourceType = SongSourceType.network
        ..wyyId = '185868'
        ..trackName = '不能说的秘密'
        ..albumName = '不能说的秘密 电影原声带'
        ..albumImageUrl =
            'http://p2.music.126.net/AWFCKGo1ST-OMXZ0nFDwJQ==/109951165967134415.jpg?param=300y300'
        ..artistNames = ['周杰伦'],
      Song()
        ..songSourceType = SongSourceType.network
        ..wyyId = '25882976'
        ..trackName = 'Live While We\'re Young'
        ..albumName = 'Take Me Home'
        ..albumImageUrl =
            'http://p2.music.126.net/AWFCKGo1ST-OMXZ0nFDwJQ==/109951165967134415.jpg?param=300y300'
        ..artistNames = ['One Direction'],
      Song()
        ..songSourceType = SongSourceType.network
        ..wyyId = '1815684465'
        ..trackName = 'Rubia'
        ..albumName = 'Rubia'
        ..albumImageUrl =
            'http://p2.music.126.net/499AYZ3epP1T7GJYvnJZZQ==/109951165671947083.jpg?param=300y300'
        ..artistNames = ['周深'],
      Song()
        ..songSourceType = SongSourceType.network
        ..wyyId = '436346833'
        ..trackName = '凄美地'
        ..albumName = '飞行器的执行周期'
        ..albumImageUrl =
            'http://p1.music.126.net/wSMfGvFzOAYRU_yVIfquAA==/2946691248081599.jpg?param=300y300'
        ..artistNames = ['郭顶'],
      Song()
        ..songSourceType = SongSourceType.network
        ..wyyId = '1333151468'
        ..trackName = 'Style'
        ..albumName = '1989'
        ..albumImageUrl =
            'http://p1.music.126.net/BWyYcboEZR_YgnKJooBQjg==/109951168132553125.jpg?param=300y300'
        ..artistNames = ['Taylor Swift'],
      Song()
        ..songSourceType = SongSourceType.network
        ..wyyId = '441491828'
        ..trackName = '水星记'
        ..albumName = '飞行器的执行周期'
        ..albumImageUrl =
            'http://p1.music.126.net/wSMfGvFzOAYRU_yVIfquAA==/2946691248081599.jpg?param=300y300'
        ..artistNames = ['郭顶'],
      Song()
        ..songSourceType = SongSourceType.network
        ..wyyId = '1333151465'
        ..trackName = 'Welcome To New York'
        ..albumName = '1989'
        ..albumImageUrl =
            'http://p1.music.126.net/BWyYcboEZR_YgnKJooBQjg==/109951168132553125.jpg?param=300y300'
        ..artistNames = ['Taylor Swift'],
      Song()
        ..songSourceType = SongSourceType.network
        ..wyyId = '1333151467'
        ..trackName = 'Blank Space'
        ..albumName = '1989'
        ..albumImageUrl =
            'http://p1.music.126.net/BWyYcboEZR_YgnKJooBQjg==/109951168132553125.jpg?param=300y300'
        ..artistNames = ['Taylor Swift'],
      Song()
        ..songSourceType = SongSourceType.network
        ..wyyId = '2059532170'
        ..trackName = '流沙 (Reimagined)'
        ..albumName = '流沙 (Reimagined)'
        ..albumImageUrl =
            'http://p1.music.126.net/RHvOnjS6lxCxRRXlH1FjIw==/109951168704179066.jpg?param=300y300'
        ..path='https://m704.music.126.net/20230809234950/64dfeefdd2443b08732287c1c4df8a62/jdyyaac/obj/w5rDlsOJwrLDjj7CmsOj/29065763867/5bcb/13f6/a8a7/dd49979f3ebdbcf8b7da3b2a8c0625a9.m4a?authSecret=00000189dae68f76052e0aa468270354'
        ..artistNames = ['陶喆'],
      Song()
        ..songSourceType = SongSourceType.network
        ..wyyId = '2061681659'
        ..trackName = 'Pet'
        ..albumName = 'PET'
        ..albumImageUrl =
            'http://p2.music.126.net/8592UX67UjpPN_SXP1biog==/109951168729414039.jpg?param=300y300'
        ..path='https://m704.music.126.net/20230809234612/030369654a4c707cce186c85f0ed4667/jdyyaac/obj/w5rDlsOJwrLDjj7CmsOj/29216943251/eaaf/17dc/ec5e/882eb30774659460505415ac42282acd.m4a?authSecret=00000189dae33c2110040aaba0cc089d'
        ..artistNames = ['渡口']
    ];
    return songList;
  }
}
