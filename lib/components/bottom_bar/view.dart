import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'logic.dart';

class BottomBarComponent extends StatelessWidget {
  const BottomBarComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final logic = Get.put(BottomBarLogic());
    final state = Get.find<BottomBarLogic>().state;

    return GetBuilder<BottomBarLogic>(builder: (logic) {
      return BottomNavigationBar(
          currentIndex: state.currentIndex,
          iconSize: 28,
          showSelectedLabels: true,
          showUnselectedLabels: false,
          selectedFontSize: 10,
          backgroundColor: Color.fromRGBO(255, 255, 255, 0.98),
          selectedItemColor: Color.fromRGBO(202, 195, 90, 1),
          type: BottomNavigationBarType.fixed,
          onTap: (int index) {
            logic.changeNavIndex(index);
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.play_circle_fill_rounded), label: "发现"),
            BottomNavigationBarItem(
                icon: Icon(Icons.album_rounded), label: "乐曲库"),
            BottomNavigationBarItem(icon: Icon(Icons.face), label: "我的"),
          ]);
    });
  }
}
