import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iron/components/album_list/view.dart';
import 'package:iron/components/artist_list/view.dart';
import 'package:iron/components/song_list/view.dart';

import 'logic.dart';

class CabinetPage extends StatelessWidget {
  const CabinetPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final logic = Get.put(CabinetLogic());
    final state = Get.find<CabinetLogic>().state;

    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Expanded(
          child: DefaultTabController(
            length: 3,
            initialIndex: 0,
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 70,
                  padding: EdgeInsetsDirectional.fromSTEB(6, 0, 0, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                          child: Container(
                        height: double.infinity,
                        decoration: BoxDecoration(),
                        alignment: AlignmentDirectional(-1, 0),
                        child: TabBar(
                          isScrollable: true,
                          labelPadding:
                              EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                          indicatorColor: Colors.transparent,
                          labelColor: Colors.black87,
                          labelStyle: TextStyle(
                            fontWeight: FontWeight.w800,
                            fontFamily: 'NotoSerifSC',
                            letterSpacing: 0.5,
                            fontSize: 26,
                          ),
                          unselectedLabelColor: Colors.black45,
                          unselectedLabelStyle: TextStyle(
                            fontSize: 16,
                            letterSpacing: 0,
                            fontFamily: 'NotoSerifSC',
                          ),
                          tabs: [
                            Tab(
                              text: '专辑柜',
                            ),
                            Tab(
                              text: '歌曲库',
                            ),
                            Tab(
                              text: '艺术家',
                            ),
                          ],
                        ),
                      )),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(18, 0, 18, 0),
                        child: Icon(
                          Icons.sort_rounded,
                          size: 24,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: TabBarView(
                    children: [
                      AlbumListComponent(),
                      SongListComponent(),
                      ArtistListComponent(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
