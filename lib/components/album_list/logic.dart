import 'package:get/get.dart';
import 'package:get_it/get_it.dart';
import 'package:iron/common/models/Album.dart';
import 'package:isar/isar.dart';

import 'state.dart';

class AlbumListLogic extends GetxController {
  final AlbumListState state = AlbumListState();

  getAlbumList() async {
    final isar = GetIt.I<Isar>();
    state.albumList = await isar.albums.where().findAll();
    update();
  }
}
