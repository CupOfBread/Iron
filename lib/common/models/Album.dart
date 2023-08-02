import 'package:isar/isar.dart';

part 'Album.g.dart';

@collection
class Album {
  //ID
  Id id = Isar.autoIncrement;

  //网易云ID
  String? wyyId = '';

  //烫斗ID
  String? ironId = '';

  String? albumName = '';

  String? albumImageUrl = '';

  int? size = 0;

  //艺人ID
  List<String>? artistIDs = [];

  //艺人名
  List<String>? artistNames = [];

  //简要描述
  String? briefDesc = '';

  //发布时间
  DateTime? publishTime = DateTime(1900);

  //歌曲
  List<String>? songsIds = [];

  //发行公司
  String? company = '';

  @override
  String toString() {
    return 'Album{id: $id, wyyId: $wyyId, ironId: $ironId, albumName: $albumName, albumImageUrl: $albumImageUrl, size: $size, artistIDs: $artistIDs, artistNames: $artistNames, briefDesc: $briefDesc, publishTime: $publishTime, songsIds: $songsIds, company: $company}';
  }
}
