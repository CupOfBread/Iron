import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'logic.dart';

class ArtistDetailPage extends StatelessWidget {
  ArtistDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final logic = Get.put(ArtistDetailLogic());
    final state = Get.find<ArtistDetailLogic>().state;

    final Map args = Get.arguments as Map;
    logic.initArtistDetail(args);

    return Scaffold(
      body: SafeArea(
        top: true,
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              height: 300,
              child: ShaderMask(
                shaderCallback: (rect) {
                  return LinearGradient(
                          begin: Alignment.center,
                          end: Alignment.bottomCenter,
                          colors: [Colors.black, Colors.transparent])
                      .createShader(
                          Rect.fromLTRB(0, 0, rect.width, rect.height));
                },
                blendMode: BlendMode.dstIn,
                child: GetBuilder<ArtistDetailLogic>(
                  builder: (logic) {
                    return CachedNetworkImage(
                      imageUrl: state.artist.avatarUrl,
                      fit: BoxFit.cover,
                      width: double.infinity,
                      height: double.infinity,
                    );
                  },
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: double.infinity,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    width: double.infinity,
                    height: 60,
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(4, 0, 10, 0),
                          child: IconButton(
                            iconSize: 40,
                            icon: Icon(
                              Icons.chevron_left_rounded,
                              color: Colors.white,
                              shadows: [
                                Shadow(color: Colors.black54, blurRadius: 15.0)
                              ],
                            ),
                            onPressed: () {
                              Get.back();
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(4, 196, 0, 0),
                    child: Container(
                      width: double.infinity,
                      height: 58,
                      child: GetBuilder<ArtistDetailLogic>(builder: (logic) {
                        return Text(
                          state.artist.name,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontFamily: 'NotoSerifSC',
                            color: Color(0xFF1F1F1F),
                            fontSize: 40,
                            fontWeight: FontWeight.w900,
                          ),
                        );
                      }),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 36,
                    margin: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(7, 0, 0, 0),
                          child: Container(
                            height: double.infinity,
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
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        4, 0, 0, 0),
                                    child: GetBuilder<ArtistDetailLogic>(
                                        builder: (logic) {
                                      return Text(
                                        '随机播放(' +
                                            state.songList.length.toString() +
                                            ')',
                                        style: TextStyle(
                                          fontFamily: 'NotoSerifSC',
                                          color: Color(0xFF696B5A),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                        ),
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
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 0, 12, 0),
                                child: Icon(
                                  Icons.sort_by_alpha_rounded,
                                  color: Color(0xFF727272),
                                  size: 20,
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 0, 14, 0),
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
                  Expanded(child: GetBuilder<ArtistDetailLogic>(
                    builder: (logic) {
                      return ListView.builder(
                          itemCount: state.songList.length,
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              onTap: (){
                                logic.changePlayList(index);
                              },
                              child: Container(
                                width: double.infinity,
                                height: 70,
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Container(
                                      width:
                                          MediaQuery.sizeOf(context).width * 0.88,
                                      height: double.infinity,
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            width: 48,
                                            height: 50,
                                            alignment: AlignmentDirectional(0, 0),
                                            child: Text(
                                              (index + 1).toString(),
                                              style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.w800,
                                                color: Color(0xFF2B2B2B),
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: Container(
                                              width: double.infinity,
                                              height: 50,
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.spaceAround,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    state.songList[index]
                                                        .trackName,
                                                    maxLines: 1,
                                                    style: TextStyle(
                                                      fontFamily: 'NotoSerifSC',
                                                      color: Color(0xFF474747),
                                                      fontSize: 16,
                                                      fontWeight: FontWeight.w800,
                                                    ),
                                                  ),
                                                  Text(
                                                    state.songList[index]
                                                        .artistNames[0],
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
                                        alignment: AlignmentDirectional(0, 0),
                                        child: Padding(
                                          padding: EdgeInsetsDirectional.fromSTEB(
                                              0, 0, 4, 0),
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
                    },
                  ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
