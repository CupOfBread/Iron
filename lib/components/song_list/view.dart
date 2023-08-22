import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iron/common/models/Song.dart';

import 'logic.dart';

class SongListComponent extends StatefulWidget {
  @override
  _SongListComponent createState() => _SongListComponent();
}

class _SongListComponent extends State<SongListComponent> with AutomaticKeepAliveClientMixin {
  final logic = Get.put(SongListLogic());
  final state = Get.find<SongListLogic>().state;

  @override
  Widget build(BuildContext context) {
    logic.getSongList();
    // var localAlbumImageBox = Hive.box('local_album_image');
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Container(
          width: double.infinity,
          height: 36,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(7, 0, 0, 0),
                child: Container(
                  height: double.infinity,
                  decoration: BoxDecoration(),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.play_circle_fill_rounded,
                        color: Color(0xFFB8CA5A),
                        size: 22,
                      ),
                      Align(
                        alignment: AlignmentDirectional(0, 0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(4, 0, 0, 0),
                          child: GetBuilder<SongListLogic>(builder: (logic) {
                            return GestureDetector(
                              child: Text(
                                '随机播放(' + state.songList.length.toString() + ')',
                                style: TextStyle(
                                  fontFamily: 'NotoSerifSC',
                                  color: Color(0xFF696B5A),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              onTap: (){
                                logic.test();
                              },
                            );
                          }),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: double.infinity,
                decoration: BoxDecoration(),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 12, 0),
                      child: Icon(
                        Icons.sort_by_alpha_rounded,
                        color: Color(0xFF727272),
                        size: 20,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 14, 0),
                      child: Icon(
                        Icons.checklist_sharp,
                        color: Color(0xFF727272),
                        size: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: GetBuilder<SongListLogic>(builder: (logic) {
            return ListView.builder(
                padding: EdgeInsets.fromLTRB(
                  0,
                  0,
                  0,
                  80,
                ),
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemCount: state.songList.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      logic.changePlayList(index);
                    },
                    child: Container(
                      width: double.infinity,
                      height: 76,
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            width: MediaQuery.sizeOf(context).width * 0.88,
                            height: double.infinity,
                            decoration: BoxDecoration(),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(12, 0, 8, 0),
                                  child: Container(
                                    width: 54,
                                    height: 54,
                                    decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 4,
                                          color: Color(0x5554633F),
                                          offset: Offset(1, 2),
                                        )
                                      ],
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(8),
                                      child: state.songList[index].songSourceType == SongSourceType.network
                                          ? CachedNetworkImage(
                                              imageUrl: state.songList[index].albumImageUrl,
                                              width: 54,
                                              height: 54,
                                              fit: BoxFit.cover,
                                            )
                                          :Image.file(File('${logic.GLOBAL_VALUE.applicationDocumentsDirectory.path}/${state.songList[index].albumName}.jpg'),
                                        width: 54,
                                        height: 54,
                                        fit: BoxFit.cover,
                                      )
                                          // : Image.memory(
                                          //     localAlbumImageBox.get(state.songList[index].albumName),
                                          //     width: 54,
                                          //     height: 54,
                                          //     fit: BoxFit.cover,
                                          //   ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    width: double.infinity,
                                    height: 50,
                                    decoration: BoxDecoration(),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          state.songList[index].trackName,
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                            fontFamily: 'NotoSerifSC',
                                            color: Color(0xFF474747),
                                            fontSize: 18,
                                            fontWeight: FontWeight.w800,
                                          ),
                                        ),
                                        Text(
                                          state.songList[index].artistNames[0],
                                          maxLines: 1,
                                          style: TextStyle(
                                            fontFamily: 'NotoSerifSC',
                                            color: Color(0xFF767676),
                                            fontSize: 12,
                                            fontWeight: FontWeight.w300,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Container(
                              width: double.infinity,
                              height: double.infinity,
                              decoration: BoxDecoration(),
                              alignment: AlignmentDirectional(0, 0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 4, 0),
                                child: Icon(
                                  Icons.more_vert,
                                  color: Color(0xFF6B6B6B),
                                  size: 22,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                });
          }),
        )
      ],
    );
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
