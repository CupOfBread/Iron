import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'logic.dart';

class MyPage extends StatelessWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final logic = Get.put(MyLogic());
    final state = Get.find<MyLogic>().state;

    return Column(mainAxisSize: MainAxisSize.max, children: [
      Container(
        width: double.infinity,
        height: 70,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(),
                alignment: AlignmentDirectional(-1, 0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16, 0, 0, 0),
                  child: Text(
                    '我的',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontFamily: 'NotoSerifSC',
                      fontSize: 26,
                      letterSpacing: 2,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(18, 0, 18, 0),
              child: Builder(builder: (context) {
                return IconButton(
                  onPressed: () {
                    Scaffold.of(context).openEndDrawer();
                  },
                  icon: Icon(
                    Icons.sort_rounded,
                    size: 24,
                  ),
                );
              }),
            ),
          ],
        ),
      )
    ]);
  }
}
