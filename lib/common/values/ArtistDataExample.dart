import 'package:iron/common/models/Artist.dart';

class ArtistDataExample {
  List<Artist> loadArtist() {
    List<Artist> artistList = [
      Artist()
        ..wyyId = '12140120'
        ..name = '树 Itsuki'
        ..albumSize = 19
        ..musicSize = 21
        ..avatarUrl =
            'http://p1.music.126.net/siZY5oHkqJhzq10eMQqMYQ==/109951168432318621.jpg?param=300y300',
      Artist()
        ..wyyId = '5196'
        ..name = '陶喆'
        ..albumSize = 29
        ..musicSize = 33
        ..avatarUrl =
            'http://p1.music.126.net/Lj9VwMOb1buVYxJA-jTUAg==/109951168707699176.jpg?param=400y400',
      Artist()
        ..wyyId = '1024308'
        ..name = '张碧晨'
        ..avatarUrl =
            'http://p2.music.126.net/ArbpVuafLfcdRAPDi4JTDA==/109951167896179360.jpg?param=300y300',
      Artist()
        ..wyyId = '2738'
        ..name = '方大同'
        ..avatarUrl =
            'http://p1.music.126.net/TQEik9NnhIQ75dZ11TnfYA==/109951165137141788.jpg?param=400y400',
      Artist()
        ..wyyId = '9272'
        ..name = '孙燕姿'
        ..albumSize = 38
        ..musicSize = 56
        ..avatarUrl =
            'http://p2.music.126.net/xQHd2jGf6z0thNcNamwBhQ==/109951166566542419.jpg?param=400y400',
      Artist()
        ..wyyId = '6472'
        ..name = '张杰'
        ..avatarUrl =
            'http://p2.music.126.net/dzLeVgYAzx-JIuj2-O1GMw==/109951167379347512.jpg?param=300y300',
      Artist()
        ..wyyId = '187229'
        ..name = '吴青峰'
        ..avatarUrl =
            'http://p2.music.126.net/rMHp-kMLvnG6F3s8o79qww==/109951168565263320.jpg?param=300y300'
    ];
    return artistList;
  }
}
