import 'package:get/get.dart';
import 'package:get_it/get_it.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

import 'state.dart';
import 'package:iron/common/models/Song.dart';
import 'package:iron/components/bottom_player_bar/logic.dart';

class SongListLogic extends GetxController {
  final SongListState state = SongListState();
  final bottomBarLogic = Get.put(BottomPlayerBarLogic());
  late final applicationDocumentsDirectory;

  getSongList() async {
    final isar = GetIt.I<Isar>();
    state.songList = await isar.songs.where().findAll();
    applicationDocumentsDirectory = await getApplicationDocumentsDirectory();
    update();
  }

  changePlayList(int index) {
    var songList = state.songList.sublist(index, state.songList.length);

    List<String> songIdList = [];

    songList.forEach((element) {
      if (element.songSourceType == SongSourceType.network) {
        songIdList.add(element.wyyId);
      } else {
        songIdList.add(element.id.toString());
      }
    });

    bottomBarLogic.loadNewPlaylist(songIdList);
  }
}
