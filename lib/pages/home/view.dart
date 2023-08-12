import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iron/components/bottom_bar/logic.dart';
import 'package:iron/components/bottom_bar/view.dart';
import 'package:iron/components/bottom_player_bar/view.dart';
import 'package:iron/pages/cabinet/view.dart';
import 'package:iron/pages/discover/view.dart';
import 'package:iron/pages/my/view.dart';

import 'logic.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final logic = Get.put(HomeLogic());
    final navLogic = Get.put(BottomBarLogic());
    final state = Get.find<HomeLogic>().state;
    final navState = Get.find<BottomBarLogic>().state;
    final bottomBarLogic = Get.find<BottomBarLogic>();

    List<Widget> pages = const [const DiscoverPage(), const CabinetPage(), const MyPage()];

    return Scaffold(
      endDrawer: Drawer(
        child: SafeArea(
          child: ListView(
            children: [DrawerHeader(child: Text('Header'))],
          ),
        ),
      ),
      body: SafeArea(
          top: true,
          child: Stack(children: [
            Container(
              width: double.infinity,
              height: double.infinity,
              child: PageView(
                physics: const NeverScrollableScrollPhysics(),
                controller: bottomBarLogic.pageController,
                children: pages,
              ),
            ),
            Column(mainAxisSize: MainAxisSize.max, mainAxisAlignment: MainAxisAlignment.end, children: [BottomPlayerBarComponent()])
          ])),
      bottomNavigationBar: BottomBarComponent(),
    );
  }
}
