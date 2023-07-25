import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'logic.dart';

class DiscoverPage extends StatelessWidget {
  const DiscoverPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final logic = Get.put(DiscoverLogic());
    final state = Get.find<DiscoverLogic>().state;

    return Column(mainAxisSize: MainAxisSize.max, children: [
      Container(
        width: double.infinity,
        height: 70,
        decoration: BoxDecoration(),
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
                    '发现',
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
              child: Icon(
                Icons.sort_rounded,
                size: 24,
              ),
            ),
          ],
        ),
      )
    ]);
  }
}
