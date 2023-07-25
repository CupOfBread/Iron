import 'package:isar/isar.dart';

@collection
class Album {
   String? albumId;

   String? albumName;

   String? albumImageUrl;

  //艺人ID
   List<String>? artistIDs;

  //艺人名
   List<String>? artistNames;

  //介绍
   String? description;

  //发布时间
   DateTime? publishTime;

  //歌曲
   List<String>? songsIds;
}
