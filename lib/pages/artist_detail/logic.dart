import 'package:get/get.dart';
import 'package:get_it/get_it.dart';
import 'package:iron/common/models/Artist.dart';
import 'package:iron/common/models/Song.dart';
import 'package:isar/isar.dart';

import 'state.dart';

class ArtistDetailLogic extends GetxController {
  final ArtistDetailState state = ArtistDetailState();

  initArtistDetail(Map args) async {
    final isar = GetIt.I<Isar>();
    state.artist = (await isar.artists
        .filter()
        .idEqualTo(args["id"])
        .or()
        .wyyIdEqualTo(args["wyyId"])
        .findFirst())!;
    state.songList = await isar.songs
        .filter()
        .artistIDsElementEqualTo(state.artist.wyyId)
        .or()
        .artistNamesElementEqualTo(state.artist.name)
        .findAll();
    update();
  }
}
