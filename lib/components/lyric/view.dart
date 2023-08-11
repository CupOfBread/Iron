import 'package:flutter/material.dart';
import 'package:flutter_lyric/lyrics_reader.dart';
import 'package:get/get.dart';
import 'package:iron/components/bottom_player_bar/logic.dart';

import 'logic.dart';

import 'package:iron/pages/player/const.dart';

class LyricComponent extends StatefulWidget {
  @override
  _LyricComponent createState() => _LyricComponent();
}

class _LyricComponent extends State<LyricComponent> {
  final logic = Get.put(LyricLogic());
  final bottomPlayerBarLogic = Get.put(BottomPlayerBarLogic());
  final state = Get.find<LyricLogic>().state;

  var lyricModel =
      LyricsModelBuilder.create().bindLyricToMain(normalLyric).getModel();

  var playing = false;
  var lyricUI = UINetease();
  int position = 0;

  @override
  Widget build(BuildContext context) {
    lyricUI.lyricAlign = LyricAlign.LEFT;
    lyricUI.highlight = false;
    lyricUI.defaultExtSize = 55;
    lyricUI.defaultSize = 30;
    lyricUI.bias = 0.25;
    lyricUI = UINetease.clone(lyricUI);

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
  }
}
