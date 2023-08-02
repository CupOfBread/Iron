import 'package:get/get.dart';
import 'package:get_it/get_it.dart';
import 'package:iron/common/models/Album.dart';
import 'package:iron/common/models/Song.dart';
import 'package:isar/isar.dart';

import 'state.dart';

class AlbumDetailLogic extends GetxController {
  final AlbumDetailState state = AlbumDetailState();

  initAlbumDetail(Map args) async {
    final isar = GetIt.I<Isar>();
    state.album = (await isar.albums
        .filter()
        .idEqualTo(args["id"])
        .or()
        .wyyIdEqualTo(args["wyyId"])
        .findFirst())!;
    state.songList = await isar.songs
        .filter()
        .anyOf(state.album.songsIds,
            (q, String element) => q.wyyIdEqualTo(element))
        .or()
        .albumNameEqualTo(state.album.albumName)
        .findAll();
    update();
  }
}
