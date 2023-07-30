import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:iron/common/models/Album.dart';
import 'logic.dart';

class AlbumListComponent extends StatefulWidget {
  @override
  _AlbumListComponent createState() => _AlbumListComponent();
}

class _AlbumListComponent extends State<AlbumListComponent> {
  final logic = Get.put(AlbumListLogic());
  List<Album> albumList = [];

  @override
  void initState() {
    loadAlbumList();
    super.initState();
  }

  Future<void> loadAlbumList() async {
    var list = await logic.getAlbumList();
    setState(() {
      albumList = list;
    });
  }

  @override
  Widget build(BuildContext context) {
    final logic = Get.put(AlbumListLogic());
    final state = Get.find<AlbumListLogic>().state;

    return ListView(
      padding: EdgeInsets.fromLTRB(
        0,
        10,
        0,
        80,
      ),
      scrollDirection: Axis.vertical,
      children: [
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(6, 0, 6, 0),
          child: GridView(
            physics: NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 4,
              childAspectRatio: 0.88,
            ),
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            children: albumList.map((item) {
              return Container(
                decoration: BoxDecoration(),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.network(
                        item.albumImageUrl!,
                        width: 176,
                        height: 176,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                      child: Container(
                        width: 170,
                        decoration: BoxDecoration(),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              item.albumName!,
                              textAlign: TextAlign.start,
                              maxLines: 1,
                              style: TextStyle(
                                fontFamily: 'NotoSerifSC',
                                fontSize: 15,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                            Text(
                              (item.size.toString() == 'null'
                                          ? ''
                                          : item.size.toString() + '首 - ') +
                                      item.artistNames![0] ??
                                  "",
                              style: TextStyle(
                                fontFamily: 'NotoSerifSC',
                                color: Color(0xFF696969),
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}
