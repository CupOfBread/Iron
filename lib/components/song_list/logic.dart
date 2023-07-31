import 'package:get/get.dart';
import 'package:get_it/get_it.dart';

import 'package:iron/common/models/Song.dart';
import 'package:isar/isar.dart';
import 'state.dart';

class SongListLogic extends GetxController {
  final SongListState state = SongListState();

  getSongList() async {
    final isar = GetIt.I<Isar>();
    state.songList = await isar.songs.where().findAll();
    update();
  }
}
