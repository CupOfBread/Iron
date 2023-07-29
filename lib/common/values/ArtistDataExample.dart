import 'package:iron/common/models/Artist.dart';

class ArtistDataExample {
  List<Artist> loadArtist() {
    List<Artist> artistList = [
      Artist()
        ..wyyId = '5196'
        ..name = '陶喆'
        ..avatarUrl =
            'http://p1.music.126.net/Lj9VwMOb1buVYxJA-jTUAg==/109951168707699176.jpg?param=400y400',
      Artist()
        ..wyyId = '2738'
        ..name = '方大同'
        ..avatarUrl =
            'http://p1.music.126.net/TQEik9NnhIQ75dZ11TnfYA==/109951165137141788.jpg?param=400y400',
      Artist()
        ..wyyId = '9272'
        ..name = '孙燕姿'
        ..avatarUrl =
            'http://p2.music.126.net/xQHd2jGf6z0thNcNamwBhQ==/109951166566542419.jpg?param=400y400'
    ];
    return artistList;
  }
}
