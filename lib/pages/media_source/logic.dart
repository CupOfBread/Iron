import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_media_metadata/flutter_media_metadata.dart';
import 'package:get/get.dart';
import 'package:get_it/get_it.dart';
import 'package:hive/hive.dart';
import 'package:iron/common/models/MediaSourcePath.dart';
import 'package:iron/common/models/Song.dart';
import 'package:isar/isar.dart';
import 'package:permission_handler/permission_handler.dart';

import 'state.dart';

class MediaSourceLogic extends GetxController {
  final MediaSourceState state = MediaSourceState();
  final isar = GetIt.I<Isar>();

  final paths = ValueNotifier<List<MediaSourcePath>>([]);

  Future<void> scanPaths() async {
    await Permission.storage.request();
    await Permission.audio.request();
    var localAlbumImageBox = Hive.box('local_album_image');

    List<MediaSourcePath> paths = await isar.mediaSourcePaths.filter().pathIsNotEmpty().findAll();

    for (var path in paths) {
      final mediaData = await MetadataRetriever.fromFile(File(path.path));


      Song newSong = Song()
        ..songSourceType = SongSourceType.local
        ..path = path.path
        ..trackName = mediaData.trackName ?? ''
        ..albumName = mediaData.albumName ?? ''
        ..artistNames = mediaData.trackArtistNames!;

      if (newSong.albumName != '' && localAlbumImageBox.get(newSong.albumName) == null) {
        localAlbumImageBox.put(newSong.albumName, mediaData.albumArt);
      }

      print(mediaData.albumName);
      print(localAlbumImageBox.get(newSong.albumName));

      await isar.writeTxn(() async {
        await isar.songs.put(newSong);
      });
    }
  }

  Future<void> addPath() async {
    String? selectedDirectory = await FilePicker.platform.getDirectoryPath();

    if (selectedDirectory != null) {
      MediaSourcePath selectedMediaSourcePath = MediaSourcePath()..path = selectedDirectory;

      await isar.writeTxn(() async {
        await isar.mediaSourcePaths.put(selectedMediaSourcePath);
        paths.value.add(selectedMediaSourcePath);
      });
    }
  }

  Future<void> removePath(int index) async {
    await isar.writeTxn(() async {
      final success = await isar.mediaSourcePaths.delete(paths.value[index].id);
      paths.value.removeAt(index);
    });
  }

  Future<void> test() async {
    await isar.writeTxn(() async {
      await isar.mediaSourcePaths.put(MediaSourcePath()..path='''/storage/emulated/0/Music/Speak now/14 Long Live (Taylor's Version).m4a''');
    });
  }
}
