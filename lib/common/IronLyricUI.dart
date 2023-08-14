import 'package:flutter/material.dart';
import 'package:flutter_lyric/lyric_ui/lyric_ui.dart';

class IronLyricUI extends LyricUI {
  double defaultSize;
  double defaultExtSize;
  double otherMainSize;
  double bias;
  double lineGap;
  double inlineGap;
  LyricAlign lyricAlign;
  LyricBaseLine lyricBaseLine;
  bool highlight;
  HighlightDirection highlightDirection;

  IronLyricUI(
      {this.defaultSize = 30,
      this.defaultExtSize = 55,
      this.otherMainSize = 16,
      this.bias = 0.25,
      this.lineGap = 20,
      this.inlineGap = 25,
      this.lyricAlign = LyricAlign.CENTER,
      this.lyricBaseLine = LyricBaseLine.CENTER,
      this.highlight = false,
      this.highlightDirection = HighlightDirection.LTR});

  IronLyricUI.clone(IronLyricUI uiIron)
      : this(
          defaultSize: uiIron.defaultSize,
          defaultExtSize: uiIron.defaultExtSize,
          otherMainSize: uiIron.otherMainSize,
          bias: uiIron.bias,
          lineGap: uiIron.lineGap,
          inlineGap: uiIron.inlineGap,
          lyricAlign: uiIron.lyricAlign,
          lyricBaseLine: uiIron.lyricBaseLine,
          highlight: uiIron.highlight,
          highlightDirection: uiIron.highlightDirection,
        );

  @override
  TextStyle getPlayingExtTextStyle() => TextStyle(color: Colors.grey[300], fontSize: defaultExtSize);

  @override
  TextStyle getOtherExtTextStyle() => TextStyle(
        color: Colors.grey[300],
        fontSize: defaultExtSize,
      );

  @override
  TextStyle getOtherMainTextStyle() => TextStyle(color: Colors.grey[200], fontSize: otherMainSize);

  @override
  TextStyle getPlayingMainTextStyle() => TextStyle(color: Colors.white, fontSize: defaultSize, fontWeight: FontWeight.w900);

  @override
  double getInlineSpace() => inlineGap;

  @override
  double getLineSpace() => lineGap;

  @override
  double getPlayingLineBias() => bias;

  @override
  LyricAlign getLyricHorizontalAlign() => lyricAlign;

  @override
  LyricBaseLine getBiasBaseLine() => lyricBaseLine;

  @override
  bool enableHighlight() => highlight;

  @override
  HighlightDirection getHighlightDirection() => highlightDirection;
}
