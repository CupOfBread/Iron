import 'dart:io';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_it/get_it.dart';
import 'package:iron/router/app_pages.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

import 'package:iron/common/models/Album.dart';
import 'package:iron/common/models/Artist.dart';
import 'package:iron/common/models/Song.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  DartPluginRegistrant.ensureInitialized();

  late final Isar isar;

  if (Isar.instanceNames.isEmpty) {
    final Directory appDocumentsDir = await getApplicationDocumentsDirectory();
    isar = await Isar.open([SongSchema, AlbumSchema, ArtistSchema],
        directory: appDocumentsDir.path);
  }

  GetIt.I.registerSingleton<Isar>(isar);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    );
  }
}
