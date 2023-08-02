import 'package:iron/common/models/Album.dart';

class AlbumDataExample {
  List<Album> loadAlbums() {
    List<Album> albumList = [
      Album()
        ..wyyId = '2949998963'
        ..albumName = '1989'
        ..artistNames = ['Taylor Swift']
        ..albumImageUrl =
            'http://p1.music.126.net/BWyYcboEZR_YgnKJooBQjg==/109951168132553125.jpg?param=300y300'
        ..size = 22
        ..publishTime = DateTime(2019)
        ..songsIds=['1333151467','1333151465']
        ..company = 'Taylor Swift',
      Album()
        ..wyyId = '168513433'
        ..albumName = '流沙 (Reimagined)'
        ..artistNames = ['陶喆']
        ..albumImageUrl =
            'http://p1.music.126.net/RHvOnjS6lxCxRRXlH1FjIw==/109951168704179066.jpg?param=400y400'
        ..size = 1
        ..publishTime = DateTime(2023, 7, 3)
        ..company = 'StreetVoice/偉大文化',
      Album()
        ..wyyId = '2643348'
        ..albumName = '爱，不解释'
        ..artistNames = ['张杰']
        ..albumImageUrl =
            'http://p2.music.126.net/mW53BkMgGy37I7yVrUg-aQ==/109951163117902077.jpg?param=300y300'
        ..size = 9
        ..publishTime = DateTime(2013, 12, 20)
        ..company = '天娱传媒',
      Album()
        ..wyyId = '1947203'
        ..albumName = 'Poker Face'
        ..artistNames = ['Lady Gaga']
        ..albumImageUrl =
            'http://p1.music.126.net/_LZPAOkbMdb0CDL2ra0RGw==/3305131953311675.jpg?param=400y400',
      Album()
        ..wyyId = '6548'
        ..albumName = '黑白灰'
        ..artistNames = ['陈奕迅']
        ..albumImageUrl =
            'http://p2.music.126.net/WF9SAVpoTbueroj7CLoKKg==/109951163028210664.jpg?param=300y300'
        ..size = 10
        ..company = '英皇唱片',
    ];
    return albumList;
  }
}
