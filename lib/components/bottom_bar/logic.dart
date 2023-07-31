import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import 'state.dart';

class BottomBarLogic extends GetxController {
  final BottomBarState state = BottomBarState();
  final PageController pageController = PageController(initialPage: 1);

  void changeNavIndex(int index) {
    state.currentIndex = index;
    pageController.jumpToPage(index);
    update();
  }
}
