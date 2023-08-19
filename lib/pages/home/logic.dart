import 'package:get/get.dart';
import 'package:get_it/get_it.dart';
import 'package:isar/isar.dart';

import 'package:iron/common/models/Album.dart';
import 'package:iron/common/models/Artist.dart';
import 'package:iron/common/models/Song.dart';
import 'package:iron/common/values/AlbumDataExample.dart';
import 'package:iron/common/values/ArtistDataExample.dart';
import 'package:iron/common/values/SongDataExample.dart';
import 'package:iron/components/song_list/logic.dart';
import 'state.dart';

class HomeLogic extends GetxController {
  final HomeState state = HomeState();
  final songListLogic = Get.put(SongListLogic());

  Future<void> loadExampleData() async {
    final isar = GetIt.I<Isar>();
    await isar.writeTxn(() async {
      await isar.songs.putAll(SongDataExample().loadSongs());
    });

    await isar.writeTxn(() async {
      await isar.artists.putAll(ArtistDataExample().loadArtist());
    });

    await isar.writeTxn(() async {
      await isar.albums.putAll(AlbumDataExample().loadAlbums());
    });
    songListLogic.getSongList();
  }
}
