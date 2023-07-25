import 'package:get/get.dart';

import 'state.dart';

class BottomBarLogic extends GetxController {
  final BottomBarState state = BottomBarState();

  void changeNavIndex(int index) {
    state.currentIndex = index;
    update();
  }
}
