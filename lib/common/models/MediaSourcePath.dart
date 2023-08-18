import 'package:isar/isar.dart';

part 'MediaSourcePath.g.dart';

@collection
class MediaSourcePath {
  //ID
  Id id = Isar.autoIncrement;

  //路径
  String path = '';

  @override
  String toString() {
    return 'MediaSourcePath{id: $id, path: $path}';
  }
}
