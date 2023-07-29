import 'package:isar/isar.dart';

part 'Artist.g.dart';

@collection
class Artist {
  //ID
  Id id = Isar.autoIncrement;

  //网易云ID
  String? wyyId;

  //烫斗ID
  String? ironId;

  //头像
  String? avatarUrl;

  //艺人名
  String? name;

  //艺人名（翻译）
  String? transNames;

  //艺人名（别称）
  List<String>? alias;

  //简要描述
  String? briefDesc;

  int? albumSize;

  int? musicSize;

  @override
  String toString() {
    return 'Artist{id: $id, wyyId: $wyyId, ironId: $ironId, avatarUrl: $avatarUrl, name: $name, transNames: $transNames, alias: $alias, briefDesc: $briefDesc, albumSize: $albumSize, musicSize: $musicSize}';
  }
}
