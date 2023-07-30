import 'package:iron/common/models/Album.dart';

class AlbumDataExample {
  List<Album> loadAlbums() {
    List<Album> albumList = [
      Album()
        ..wyyId = '168588248'
        ..albumName = 'Speak Now (Taylor\'s Version)'
        ..artistNames=['Taylor Swift']
        ..albumImageUrl =
            'http://p1.music.126.net/3MQls4eG_yJR_HaYXPMWlA==/109951168728387752.jpg?param=400y400'
        ..size = 22
        ..publishTime = DateTime(2023)
        ..company = 'Taylor Swift',
      Album()
        ..wyyId = '168513433'
        ..albumName = '流沙 (Reimagined)'
        ..artistNames=['陶喆']
        ..albumImageUrl =
            'http://p1.music.126.net/RHvOnjS6lxCxRRXlH1FjIw==/109951168704179066.jpg?param=400y400'
        ..size = 1
        ..publishTime = DateTime(2023, 7, 3)
        ..company = 'StreetVoice/偉大文化',
      Album()
        ..wyyId = '1947203'
        ..albumName = 'Poker Face'
        ..artistNames=['Lady Gaga']
        ..albumImageUrl =
            'http://p1.music.126.net/_LZPAOkbMdb0CDL2ra0RGw==/3305131953311675.jpg?param=400y400'
    ];
    return albumList;
  }
}
