import 'package:get/get.dart';
import 'package:get_it/get_it.dart';
import 'package:iron/common/models/Artist.dart';
import 'package:isar/isar.dart';

import 'state.dart';

class ArtistListLogic extends GetxController {
  final ArtistListState state = ArtistListState();

  getAlbumList() async {
    final isar = GetIt.I<Isar>();
    state.artistList = await isar.artists.where().findAll();
    update();
  }
}
