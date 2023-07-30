import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get_it/get_it.dart';
import 'package:iron/common/models/Album.dart';
import 'package:isar/isar.dart';

import 'state.dart';

class AlbumListLogic extends GetxController {
  final AlbumListState state = AlbumListState();
  List<Album> albumList = [];

  Future<List<Album>> getAlbumList() {
    final isar = GetIt.I<Isar>();
    return isar.albums.where().findAll();
  }
}
