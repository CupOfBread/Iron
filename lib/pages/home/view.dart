import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iron/components/bottom_bar/logic.dart';
import 'package:iron/components/bottom_bar/view.dart';
import 'package:iron/components/bottom_player_bar/view.dart';
import 'package:iron/pages/cabinet/view.dart';
import 'package:iron/pages/discover/view.dart';
import 'package:iron/pages/my/view.dart';

import 'package:iron/router/app_pages.dart';
import 'package:motion_toast/motion_toast.dart';
import 'logic.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final logic = Get.put(HomeLogic());
    final state = Get.find<HomeLogic>().state;
    final navLogic = Get.put(BottomBarLogic());
    final bottomBarLogic = Get.put(BottomBarLogic());

    List<Widget> pages = const [const DiscoverPage(), const CabinetPage(), const MyPage()];

    return Scaffold(
      endDrawer: Drawer(
        child: SafeArea(
          child: ListView(
            children: [
              DrawerHeader(
                  child: Container(
                alignment: Alignment.center,
                width: double.infinity,
                height: double.infinity,
                child: Text('Header'),
              )),
              ListView(
                shrinkWrap: true,
                children: [
                  Builder(
                    builder: (context) {
                      return ListTile(
                        title: Text(
                          '媒体来源',
                          style: TextStyle(fontWeight: FontWeight.w900, color: Colors.black87),
                        ),
                        leading: Image.asset(
                          "assets/images/icon/media_source.png",
                          width: 30,
                          height: 30,
                        ),
                        onTap: () {
                          Scaffold.of(context).closeEndDrawer();
                          Get.toNamed(AppRoutes.MediaSource);
                        },
                      );
                    },
                  ),
                  Builder(
                    builder: (context) {
                      return ListTile(
                        title: Text(
                          '加载示例网络歌曲',
                          style: TextStyle(fontWeight: FontWeight.w900, color: Colors.black87),
                        ),
                        leading: Image.asset(
                          "assets/images/icon/media_source.png",
                          width: 30,
                          height: 30,
                        ),
                        onTap: () {
                          logic.loadExampleData();
                          MotionToast.success(
                            description: const Text("加载成功！"),
                          ).show(context);
                        },
                      );
                    },
                  )
                ],
              )
            ],
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
