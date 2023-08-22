import 'package:flutter/material.dart';
import 'package:flutter_lyric/lyrics_reader.dart';
import 'package:get/get.dart';
import 'package:iron/common/IronLyricUI.dart';
import 'package:iron/components/bottom_player_bar/logic.dart';

import 'logic.dart';

class LyricComponent extends StatefulWidget {
  @override
  _LyricComponent createState() => _LyricComponent();
}

class _LyricComponent extends State<LyricComponent> with AutomaticKeepAliveClientMixin {
  final logic = Get.put(LyricLogic());
  final bottomPlayerBarLogic = Get.find<BottomPlayerBarLogic>();
  final state = Get.find<LyricLogic>().state;

  var playing = false;
  var lyricUI = IronLyricUI();
  int position = 0;

  @override
  Widget build(BuildContext context) {
    lyricUI = IronLyricUI.clone(lyricUI);

    return ValueListenableBuilder(
      valueListenable: bottomPlayerBarLogic.currentSongLyricNotifier,
      builder: (_, ly, __) {
        var lyricModel = LyricsModelBuilder.create().bindLyricToMain(ly).getModel();

        return ValueListenableBuilder<ProgressBarState>(
          valueListenable: bottomPlayerBarLogic.progressNotifier,
          builder: (_, value, __) {
            return LyricsReader(
              padding: EdgeInsets.symmetric(horizontal: 20),
              lyricUi: lyricUI,
              playing: playing,
              model: lyricModel,
              position: value.current.inMilliseconds,
              emptyBuilder: () => Center(
                child: Text(
                  "本首歌曲暂无歌词",
                  style: lyricUI.getOtherMainTextStyle(),
                ),
              ),
            );
          },
        );
      },
    );
  }

  @override
  bool get wantKeepAlive => true;
}
