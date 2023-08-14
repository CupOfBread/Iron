import 'dart:io';

import 'package:audio_service/audio_service.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

import 'package:iron/common/models/Album.dart';
import 'package:iron/common/models/Artist.dart';
import 'package:iron/common/models/Song.dart';
import 'audio_handler.dart';
import 'package:get_it/get_it.dart';

Future<void> setupServiceLocator() async {
  late final Isar isar;

  if (Isar.instanceNames.isEmpty) {
    final Directory appDocumentsDir = await getApplicationDocumentsDirectory();
    isar = await Isar.open([SongSchema, AlbumSchema, ArtistSchema],
        directory: appDocumentsDir.path);
  }


  GetIt.I.registerSingleton<Isar>(isar);
  GetIt.I.registerSingleton<AudioHandler>(await initAudioService());
}
