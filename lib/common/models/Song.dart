import 'package:isar/isar.dart';

@collection
class Song {
  //ID
  Id id = Isar.autoIncrement;

  //网易云ID
  String? wyyId;

  //烫斗ID
  String? ironId;

  //标题
  String? trackName;

  //艺人ID
  List<String>? artistIDs;

  //艺人名
  List<String>? artistNames;

  //标题别名
  String? trackAlias;

  //专辑ID
  String? albumId;

  //专辑名
  String? albumName;

  //专辑内顺序
  int? trackNumber;

  //专辑歌曲数量
  int? albumLength;

  //发布时间
  DateTime? publishTime;

  //流派
  List<String>? genre;

  //歌曲来源
  SongSourceType? songSourceType = SongSourceType.local;

  //歌曲地址
  String? path;
}

//歌曲来源：本地、网络
enum SongSourceType { local, network }
