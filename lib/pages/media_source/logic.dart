import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_media_metadata/flutter_media_metadata.dart';
import 'package:flutter_overlay_loader/flutter_overlay_loader.dart';
import 'package:get/get.dart';
import 'package:get_it/get_it.dart';
import 'package:isar/isar.dart';
import 'package:motion_toast/motion_toast.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';

import 'package:iron/common/models/MediaSourcePath.dart';
import 'package:iron/common/models/Song.dart';
import 'package:iron/components/song_list/logic.dart';
import 'state.dart';

class MediaSourceLogic extends GetxController {
  final MediaSourceState state = MediaSourceState();
  final songListLogic = Get.find<SongListLogic>();
  final isar = GetIt.I<Isar>();

  Future<void> initPathList() async {
    List<MediaSourcePath> pathFromDB = await isar.mediaSourcePaths.filter().pathIsNotEmpty().findAll();

    state.paths = pathFromDB;
    update();
  }

  Future<void> scanPaths(context) async {
    await Permission.storage.request();
    await Permission.audio.request();
    final fileDirectory = await getApplicationDocumentsDirectory();

    Loader.show(context, progressIndicator: const CircularProgressIndicator());

    List<MediaSourcePath> pathFromDB = await isar.mediaSourcePaths.filter().pathIsNotEmpty().findAll();

    if (pathFromDB.isEmpty) {
      Loader.hide();
      return;
    }

    state.paths = pathFromDB;

    for (var path in pathFromDB) {
      final myDir = Directory(path.path);
      final List<FileSystemEntity> list = await myDir.list().toList();

      for (var value in list) {
        if (value is File) {
          if (await isar.songs.filter().pathEqualTo(value.path).count() == 0) {
            final mediaData = await MetadataRetriever.fromFile(File(value.path));

            Song newSong = Song()
              ..songSourceType = SongSourceType.local
              ..path = value.path
              ..trackName = mediaData.trackName ?? ''
              ..albumName = mediaData.albumName ?? ''
              ..artistNames = mediaData.trackArtistNames!;

            await isar.writeTxn(() async {
              await isar.songs.put(newSong);
            });

            final file = File('${fileDirectory.path}/${newSong.albumName}.jpg');

            if (newSong.albumName != '' && mediaData.albumArt != null && await file.exists() == false) {
              await file.writeAsBytes(mediaData.albumArt!.toList());
            }
          }
        }
      }

      Loader.hide();

      songListLogic.getSongList();

      MotionToast.success(
        description: Text("更新完毕"),
      ).show(context);
    }
  }

  Future<void> addPath(context) async {
    await Permission.storage.request();
    await Permission.audio.request();
    String? selectedDirectory = await FilePicker.platform.getDirectoryPath();

    if (selectedDirectory != null) {
      if (await isar.mediaSourcePaths.filter().pathEqualTo(selectedDirectory).count() == 0) {
        MediaSourcePath selectedMediaSourcePath = MediaSourcePath()..path = selectedDirectory;

        await isar.writeTxn(() async {
          await isar.mediaSourcePaths.put(selectedMediaSourcePath);
          state.paths.add(selectedMediaSourcePath);
          update();
        });
        MotionToast.success(
          description: Text("添加成功，请点击扫描按钮更新曲库！"),
        ).show(context);
      } else {
        MotionToast.warning(
          description: Text("该目录已存在！"),
        ).show(context);
      }
    }
  }

  Future<void> removePath(int index) async {
    await isar.writeTxn(() async {
      final success = await isar.mediaSourcePaths.delete(state.paths[index].id);
      state.paths.removeAt(index);
    });
    update();
  }

  Future<void> test() async {
    // await isar.writeTxn(() async {
    //   await isar.mediaSourcePaths.put(MediaSourcePath()..path = '''/storage/emulated/0/Music/Speak now/14 Long Live (Taylor's Version).m4a''');
    // });
    // await isar.writeTxn(() async {
    //   await isar.mediaSourcePaths.put(MediaSourcePath()..path = '''/storage/emulated/0/Music/Speak now''');
    // });

    final fileDirectory = await getApplicationDocumentsDirectory();
    final file = File('${fileDirectory.path}/${fileDirectory.path}.jpg');

    update();
  }
}
