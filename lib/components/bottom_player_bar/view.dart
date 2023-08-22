import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:dismissible_page/dismissible_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iron/common/models/Song.dart';
import 'package:iron/pages/player/view.dart';

import 'logic.dart';

class BottomPlayerBarComponent extends StatelessWidget {
  const BottomPlayerBarComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final logic = Get.put(BottomPlayerBarLogic());
    final state = Get.find<BottomPlayerBarLogic>().state;
    final playerBarLogic = Get.find<BottomPlayerBarLogic>();

    return Container(
      width: double.infinity,
      height: 60,
      decoration: BoxDecoration(
        color: Color.fromRGBO(255, 255, 255, 0.97),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(0),
          bottomRight: Radius.circular(0),
          topLeft: Radius.circular(12),
          topRight: Radius.circular(12),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          InkWell(
            onTap: () {
              context.pushTransparentRoute(PlayerPage());
            },
            child: Container(
              width: 260,
              height: double.infinity,
              decoration: BoxDecoration(),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Align(
                    alignment: AlignmentDirectional(0, 0),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(8, 0, 8, 0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(8),
                          bottomRight: Radius.circular(8),
                          topLeft: Radius.circular(6),
                          topRight: Radius.circular(6),
                        ),
                        child: ValueListenableBuilder<Song>(
                          valueListenable: playerBarLogic.currentSongNotifier,
                          builder: (_, value, __) {
                            return value.songSourceType == SongSourceType.network
                                ? CachedNetworkImage(
                                    imageUrl: value.albumImageUrl,
                                    width: 44,
                                    height: 44,
                                    fit: BoxFit.cover,
                                    placeholder: (context, url) => CircularProgressIndicator(
                                      color: Colors.black12,
                                    ),
                                  )
                                : Image.file(
                                    File('${logic.GLOBAL_VALUE.applicationDocumentsDirectory.path}/${value.albumName}.jpg'),
                                    width: 44,
                                    height: 44,
                                    fit: BoxFit.cover,
                                  );
                          },
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 8, 0),
                      child: Container(
                        width: double.infinity,
                        height: double.infinity,
                        alignment: AlignmentDirectional(-1, 0),
                        child: ValueListenableBuilder<Song>(
                          valueListenable: playerBarLogic.currentSongNotifier,
                          builder: (_, value, __) {
                            //TODO: 切换歌曲后，滚动错位
                            // return Marquee(
                            //   text: value.trackName +
                            //       ' - ' +
                            //       value.artistNames[0],
                            //   style: TextStyle(fontWeight: FontWeight.bold),
                            //   blankSpace: 180,
                            //   velocity: 160.0,
                            //   pauseAfterRound: Duration(seconds: 1),
                            //   showFadingOnlyWhenScrolling: true,
                            //   fadingEdgeStartFraction: 0.1,
                            //   fadingEdgeEndFraction: 0.1,
                            //   startPadding: 10.0,
                            //   accelerationDuration: Duration(seconds: 1),
                            //   accelerationCurve: Curves.linear,
                            //   decelerationDuration: Duration(milliseconds: 500),
                            //   decelerationCurve: Curves.easeOut,
                            // );
                            // );
                            return Text(
                              '${value.trackName} - ${value.artistNames[0]}',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ValueListenableBuilder<PlayerState>(
                      valueListenable: logic.playerPlayButtonNotifier,
                      builder: (_, value, __) {
                        switch (value) {
                          case PlayerState.loading:
                            return Container(
                              margin: const EdgeInsets.all(8.0),
                              width: 32.0,
                              height: 32.0,
                              child: const CircularProgressIndicator(
                                color: Colors.black54,
                              ),
                            );
                          case PlayerState.paused:
                            return IconButton(
                              icon: const Icon(Icons.play_arrow_rounded),
                              iconSize: 32.0,
                              color: Color(0xFF606060),
                              onPressed: () {
                                logic.play();
                              },
                            );
                          case PlayerState.playing:
                            return IconButton(
                              icon: const Icon(Icons.pause_rounded),
                              color: Color(0xFF606060),
                              iconSize: 32.0,
                              onPressed: () {
                                logic.pause();
                              },
                            );
                        }
                      }),
                  InkWell(
                    onTap: () {
                      logic.onNextSongButtonPressed();
                    },
                    child: Icon(
                      Icons.skip_next_rounded,
                      color: Color(0xFF606060),
                      size: 25,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(3, 0, 3, 0),
                    child: Icon(
                      Icons.format_list_bulleted_rounded,
                      color: Color(0xFF606060),
                      size: 20,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
