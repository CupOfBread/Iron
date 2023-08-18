import 'package:isar/isar.dart';

part 'Song.g.dart';

@collection
class Song {
  //ID
  Id id = Isar.autoIncrement;

  //网易云ID
  String wyyId = '';

  //烫斗ID
  String ironId = '';

  //标题
  String trackName = '';

  //艺人ID
  List<String> artistIDs = [];

  //艺人名
  List<String> artistNames = [''];

  //标题别名
  String trackAlias = '';

  //专辑图片
  String albumImageUrl = 'https://pic.imgdb.cn/item/64ca03a11ddac507cc039568.png';

  //专辑图片
  List<int> albumArt = [];

  //专辑ID
  String albumId = '';

  //专辑名
  String albumName = '';

  //专辑内顺序
  int trackNumber = 0;

  //专辑歌曲数量
  int albumLength = 0;

  //发布时间
  DateTime publishTime = DateTime(1900);

  //流派
  List<String> genre = [''];

  //歌曲来源
  @enumerated
  SongSourceType songSourceType = SongSourceType.network;

  //歌曲地址
  String path = '';

  @override
  String toString() {
    return 'Song{id: $id, wyyId: $wyyId, ironId: $ironId, trackName: $trackName, artistIDs: $artistIDs, artistNames: $artistNames, trackAlias: $trackAlias, albumImageUrl: $albumImageUrl, albumId: $albumId, albumName: $albumName, trackNumber: $trackNumber, albumLength: $albumLength, publishTime: $publishTime, genre: $genre, songSourceType: $songSourceType, path: $path}';
  }
}

//歌曲来源：本地、网络
enum SongSourceType { local, network }
