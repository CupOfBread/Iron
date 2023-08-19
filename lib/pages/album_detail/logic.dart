import 'package:get/get.dart';
import 'package:get_it/get_it.dart';
import 'package:iron/common/models/Album.dart';
import 'package:iron/common/models/Song.dart';
import 'package:isar/isar.dart';

import 'package:iron/components/bottom_player_bar/logic.dart';
import 'state.dart';

class AlbumDetailLogic extends GetxController {
  final AlbumDetailState state = AlbumDetailState();
  final bottomBarLogic = Get.put(BottomPlayerBarLogic());

  initAlbumDetail(Map args) async {
    final isar = GetIt.I<Isar>();
    state.album = (await isar.albums
        .filter()
        .idEqualTo(args["id"])
        .or()
        .wyyIdEqualTo(args["wyyId"])
        .findFirst())!;


    state.songList = await isar.songs
        .filter().albumNameEqualTo(state.album.albumName)
        .findAll();
    update();
  }

  void changePlayList(int index) {
    final songList = state.songList.sublist(index, state.songList.length);

    List<String> songIdList = [];

    songList.forEach((element) {
      songIdList.add(element.wyyId);
    });


    bottomBarLogic.loadNewPlaylist(songIdList);
  }
}
