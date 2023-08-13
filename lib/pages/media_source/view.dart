import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'logic.dart';

class MediaSourcePage extends StatelessWidget {
  const MediaSourcePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final logic = Get.put(MediaSourceLogic());
    final state = Get.find<MediaSourceLogic>().state;

    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(55),
          child: AppBar(
            shadowColor: Colors.white10,
            title: Text('媒体来源'),
            titleTextStyle: TextStyle(color: Colors.black, fontSize: 15),
            backgroundColor: Colors.white,
            leading: IconButton(
              iconSize: 30,
              icon: const Icon(
                Icons.chevron_left,
                color: Colors.black87,
                weight: 100,
              ),
              onPressed: () {
                Get.back();
              },
            ),
            automaticallyImplyLeading: true,
            actions: [],
            centerTitle: true,
            elevation: 4,
          ),
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: ListView(
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10, 8, 10, 0),
                child: Container(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        width: double.infinity,
                        padding: EdgeInsetsDirectional.fromSTEB(8, 10, 8, 10),
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(8), color: Colors.white),
                        child: FilledButton(
                          onPressed: () {},
                          child: Text('开始扫描'),
                          style: ButtonStyle(
                              minimumSize: MaterialStateProperty.all(Size(double.infinity, 40)),
                              backgroundColor: MaterialStateProperty.all(Colors.indigoAccent)),
                        ),
                      ),
                      Divider(
                        color: Colors.transparent,
                      ),
                      Container(
                        width: double.infinity,
                        padding: EdgeInsetsDirectional.fromSTEB(8, 10, 8, 10),
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(8), color: Colors.white),
                        child: Column(
                          children: [
                            Container(
                              alignment: Alignment.topLeft,
                              child: Text(
                                '自定义扫描文件夹',
                                style: TextStyle(color: Colors.indigoAccent, fontWeight: FontWeight.w900, fontSize: 13),
                              ),
                            ),
                            ListView.builder(
                                itemCount: 3,
                                shrinkWrap: true,
                                padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 12),
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
                                    child: Container(
                                      width: double.infinity,
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                            padding: EdgeInsetsDirectional.fromSTEB(8, 0, 8, 0),
                                            child: Icon(
                                              Icons.folder_special,
                                              color: Colors.indigoAccent,
                                              size: 36,
                                            ),
                                          ),
                                          Expanded(
                                            child: Container(
                                              width: 100,
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                              ),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'Music',
                                                    style: TextStyle(
                                                      fontSize: 15,
                                                      fontWeight: FontWeight.w900,
                                                    ),
                                                  ),
                                                  Text(
                                                    '/storage/emulated/0/Music',
                                                    style: TextStyle(
                                                      color: Color(0xFF727272),
                                                      fontSize: 12,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsetsDirectional.fromSTEB(6, 0, 6, 0),
                                            child: Icon(
                                              Icons.delete_forever_outlined,
                                              color: Colors.black38,
                                              size: 18,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                }),
                            FilledButton(
                              onPressed: () {},
                              child: Text('添加自定义文件夹'),
                              style: ButtonStyle(
                                  minimumSize: MaterialStateProperty.all(Size(double.infinity, 40)),
                                  backgroundColor: MaterialStateProperty.all(Colors.black26)),
                            )
                          ],
                        ),
                      ),
                      Divider(
                        color: Colors.transparent,
                      ),
                      Container(
                        width: double.infinity,
                        padding: EdgeInsetsDirectional.fromSTEB(8, 10, 8, 10),
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(8), color: Colors.white),
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                              alignment: Alignment.topLeft,
                              child: Text(
                                '帮助',
                                style: TextStyle(color: Colors.indigoAccent, fontWeight: FontWeight.w900, fontSize: 13),
                              ),
                            ),Container(
                              alignment: Alignment.topLeft,
                              child: Text(
                                '这里是帮助文档帮助文档帮助文档帮助文档帮助文档帮助文档帮助文档帮助文档帮助文档',
                                style: TextStyle(color: Colors.black54, fontWeight: FontWeight.w900, fontSize: 11),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
