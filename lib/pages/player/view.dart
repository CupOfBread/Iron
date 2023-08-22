import 'dart:io';
import 'dart:ui';

import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:dismissible_page/dismissible_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iron/common/models/Song.dart';
import 'package:iron/components/bottom_player_bar/logic.dart';
import 'package:iron/components/lyric/view.dart';

import 'logic.dart';

class PlayerPage extends StatelessWidget {
  const PlayerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final logic = Get.put(PlayerLogic());
    final state = Get.find<PlayerLogic>().state;
    final playerBarLogic = Get.find<BottomPlayerBarLogic>();

    return DismissiblePage(
      onDismissed: () {
        // Get.back();
        Navigator.of(context).pop();
      },
      direction: DismissiblePageDismissDirection.down,
      isFullScreen: true,
      minScale: 1,
      maxRadius: 0,
      child: Scaffold(
        backgroundColor: Colors.black54,
        body: SafeArea(
          child: Container(
            width: double.infinity,
            height: double.infinity,
            child: Stack(
              children: [
                Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      height: double.infinity,
                      decoration: BoxDecoration(),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: ValueListenableBuilder<Song>(
                          valueListenable: playerBarLogic.currentSongNotifier,
                          builder: (_, value, __) {
                            return value.songSourceType == SongSourceType.network
                                ? Image.network(
                                    value.albumImageUrl,
                                    width: double.infinity,
                                    height: double.infinity,
                                    fit: BoxFit.cover,
                                  )
                                : Image.file(
                                    File('${logic.GLOBAL_VALUE.applicationDocumentsDirectory.path}/${value.albumName}.jpg'),
                                    width: 54,
                                    height: 54,
                                    fit: BoxFit.cover,
                                  );
                          },
                        ),
                      ),
                    ),
                    BackdropFilter(
                      filter: ImageFilter.blur(
                        sigmaX: 25,
                        sigmaY: 25,
                      ),
                      child: Container(
                        width: double.infinity,
                        height: double.infinity,
                        decoration: BoxDecoration(
                          color: Color(0x3D676767),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 30),
                            child: Container(
                              width: double.infinity,
                              decoration: BoxDecoration(),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 8),
                                    child: ValueListenableBuilder<Song>(
                                      valueListenable: playerBarLogic.currentSongNotifier,
                                      builder: (_, value, __) {
                                        return Text(
                                          value.trackName,
                                          textAlign: TextAlign.start,
                                          maxLines: 3,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                            fontFamily: 'NotoSerifSC',
                                            color: Color(0xFFFBFBFB),
                                            fontSize: 29,
                                            letterSpacing: 0,
                                            fontWeight: FontWeight.w900,
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(14, 0, 10, 0),
                                    child: ValueListenableBuilder<Song>(
                                      valueListenable: playerBarLogic.currentSongNotifier,
                                      builder: (_, value, __) {
                                        return Text(
                                          value.artistNames[0],
                                          textAlign: TextAlign.start,
                                          maxLines: 2,
                                          style: TextStyle(
                                            fontFamily: 'NotoSerifSC',
                                            color: Color(0xFFF0F0F0),
                                            fontSize: 16,
                                            letterSpacing: 0,
                                            fontWeight: FontWeight.w900,
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: DefaultTabController(
                              length: 3,
                              initialIndex: 1,
                              child: Column(
                                children: [
                                  Expanded(
                                    child: TabBarView(
                                      children: [
                                        Container(
                                          child: Text(
                                            "===暂时还没想到这里放什么===",
                                            style: TextStyle(color: Colors.white),
                                          ),
                                        ),
                                        Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                              width: 270,
                                              height: 270,
                                              decoration: BoxDecoration(
                                                boxShadow: [
                                                  BoxShadow(
                                                    blurRadius: 18,
                                                    color: Color(0x5E696969),
                                                    offset: Offset(4, 4),
                                                    spreadRadius: 1,
                                                  )
                                                ],
                                                borderRadius: BorderRadius.circular(6),
                                                shape: BoxShape.rectangle,
                                              ),
                                              child: Opacity(
                                                opacity: 0.9,
                                                child: ClipRRect(
                                                  borderRadius: BorderRadius.circular(8),
                                                  child: ValueListenableBuilder<Song>(
                                                    valueListenable: playerBarLogic.currentSongNotifier,
                                                    builder: (_, value, __) {
                                                      return value.songSourceType == SongSourceType.network
                                                          ? Image.network(
                                                              value.albumImageUrl,
                                                              width: double.infinity,
                                                              height: double.infinity,
                                                              fit: BoxFit.cover,
                                                            )
                                                          : Image.file(
                                                              File('${logic.GLOBAL_VALUE.applicationDocumentsDirectory.path}/${value.albumName}.jpg'),
                                                              width: 54,
                                                              height: 54,
                                                              fit: BoxFit.cover,
                                                            );
                                                    },
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 20),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                children: [
                                                  IconButton(
                                                    icon: Icon(
                                                      Icons.alarm,
                                                      color: Color(0xFFF2F2F2),
                                                      size: 32,
                                                    ),
                                                    onPressed: () async {
                                                      // playerBarLogic.testLoadLocalSongs();
                                                    },
                                                  ),
                                                  IconButton(
                                                    onPressed: () {
                                                      // playerBarLogic.testAudioService();
                                                    },
                                                    icon: Icon(
                                                      Icons.replay_10,
                                                      color: Color(0xFFF2F2F2),
                                                      size: 34,
                                                    ),
                                                  ),
                                                  IconButton(
                                                    icon: Icon(
                                                      Icons.forward_10,
                                                      color: Color(0xFFF2F2F2),
                                                      size: 34,
                                                    ),
                                                    onPressed: () {},
                                                  ),
                                                  IconButton(
                                                    icon: Icon(
                                                      Icons.favorite_border_rounded,
                                                      color: Color(0xFFF2F2F2),
                                                      size: 32,
                                                    ),
                                                    onPressed: () {},
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                        LyricComponent(),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 6, 0, 12),
                          child: Container(
                            width: MediaQuery.sizeOf(context).width * 0.86,
                            child: ValueListenableBuilder<ProgressBarState>(
                              valueListenable: playerBarLogic.progressNotifier,
                              builder: (_, value, __) {
                                return ProgressBar(
                                  progress: value.current,
                                  buffered: value.buffered,
                                  total: value.total,
                                  baseBarColor: Colors.white38,
                                  progressBarColor: Colors.white,
                                  bufferedBarColor: Colors.white38,
                                  thumbColor: Color.fromRGBO(255, 255, 255, 0.99),
                                  thumbGlowColor: Colors.white24,
                                  timeLabelTextStyle: TextStyle(color: Colors.white70),
                                  onSeek: playerBarLogic.seek,
                                );
                              },
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                                child: ValueListenableBuilder(
                                  builder: (_, isFirst, __) {
                                    return IconButton(
                                      icon: Icon(
                                        Icons.skip_previous,
                                        color: isFirst ? Colors.white38 : Colors.white,
                                        size: 40,
                                      ),
                                      onPressed: (isFirst) ? null : playerBarLogic.onPreviousSongButtonPressed,
                                    );
                                  },
                                  valueListenable: playerBarLogic.isFirstSongNotifier,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                                child: ValueListenableBuilder<PlayerState>(
                                    valueListenable: playerBarLogic.playerPlayButtonNotifier,
                                    builder: (_, value, __) {
                                      switch (value) {
                                        case PlayerState.loading:
                                          return Container(
                                            margin: const EdgeInsets.all(8.0),
                                            width: 60.0,
                                            height: 60.0,
                                            child: const CircularProgressIndicator(color: Colors.white),
                                          );
                                        case PlayerState.paused:
                                          return IconButton(
                                            icon: const Icon(Icons.play_circle_outline_rounded),
                                            iconSize: 60.0,
                                            color: Color(0xFFFBFBFB),
                                            onPressed: () {
                                              playerBarLogic.play();
                                            },
                                          );
                                        case PlayerState.playing:
                                          return IconButton(
                                            icon: const Icon(Icons.pause_circle_outline_rounded),
                                            color: Color(0xFFFBFBFB),
                                            iconSize: 60.0,
                                            onPressed: () {
                                              playerBarLogic.pause();
                                            },
                                          );
                                      }
                                    }),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 20, 0),
                                child: ValueListenableBuilder(
                                  builder: (_, isLast, __) {
                                    return IconButton(
                                      icon: Icon(
                                        Icons.skip_next,
                                        color: isLast ? Colors.white38 : Colors.white,
                                        size: 40,
                                      ),
                                      onPressed: (isLast) ? null : playerBarLogic.onNextSongButtonPressed,
                                    );
                                  },
                                  valueListenable: playerBarLogic.isLastSongNotifier,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                          child: Container(
                            width: double.infinity,
                            height: 50,
                            decoration: BoxDecoration(),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(20, 0, 10, 0),
                                  child: Icon(
                                    Icons.keyboard_arrow_down_rounded,
                                    color: Color(0xFFF0F0F0),
                                    size: 40,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(15, 0, 25, 0),
                                  child: Icon(
                                    Icons.share_rounded,
                                    color: Color(0xFFF0F0F0),
                                    size: 26,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
