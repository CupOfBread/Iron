import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'logic.dart';

class AlbumDetailPage extends StatelessWidget {
  AlbumDetailPage({Key? key}) : super(key: key);

  final logic = Get.put(AlbumDetailLogic());
  final state = Get.find<AlbumDetailLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: true,
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              height: 350,
              child: Stack(
                children: [
                  ShaderMask(
                    shaderCallback: (rect) {
                      return LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [Colors.black, Colors.transparent])
                          .createShader(
                              Rect.fromLTRB(0, 0, rect.width, rect.height));
                    },
                    blendMode: BlendMode.dstIn,
                    child: Image.network(
                      'http://p2.music.126.net/3MQls4eG_yJR_HaYXPMWlA==/109951168728387752.jpg?param=530y530',
                      fit: BoxFit.cover,
                      width: double.infinity,
                      height: double.infinity,
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0x7EFFFFFF),
                    ),
                  ),
                  BackdropFilter(
                    filter: ImageFilter.blur(
                      sigmaX: 20,
                      sigmaY: 20,
                    ),
                    child: Container(),
                  )
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    width: double.infinity,
                    height: 60,
                    decoration: BoxDecoration(),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                          child: Icon(
                            Icons.chevron_left_rounded,
                            color: Colors.white,
                            shadows: [
                              Shadow(color: Colors.black54, blurRadius: 15.0)
                            ],
                            size: 40,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 130,
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(20, 0, 14, 0),
                          child: Container(
                            width: 110,
                            height: 110,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 6,
                                  color: Color(0x19000000),
                                  offset: Offset(0, 2),
                                )
                              ],
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.network(
                                'http://p2.music.126.net/3MQls4eG_yJR_HaYXPMWlA==/109951168728387752.jpg?param=530y530',
                                width: double.infinity,
                                height: double.infinity,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 0, 20, 0),
                            child: Container(
                              height: 100,
                              decoration: BoxDecoration(),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Speak Now (Taylor\'s Version)',
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      fontFamily: 'NotoSerifSC',
                                      color: Color(0xFF343434),
                                      fontSize: 22,
                                      fontWeight: FontWeight.w900,
                                    ),
                                  ),
                                  Text(
                                    'Taylor Swift',
                                    style: TextStyle(
                                      fontFamily: 'NotoSerifSC',
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xFF616161),
                                      fontSize: 17,
                                    ),
                                  ),
                                  Text(
                                    '22 Songs - 81mins - 2023',
                                    style: TextStyle(
                                      fontFamily: 'NotoSerifSC',
                                      color: Color(0xFF616161),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 36,
                    decoration: BoxDecoration(),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          decoration: BoxDecoration(),
                        ),
                        Container(
                          height: double.infinity,
                          decoration: BoxDecoration(),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 12, 0),
                                child: Icon(
                                  Icons.sort_by_alpha_rounded,
                                  color: Color(0xFF727272),
                                  size: 20,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 14, 0),
                                child: Icon(
                                  Icons.checklist_sharp,
                                  color: Color(0xFF727272),
                                  size: 20,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(child: ListView(
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    children: [
                      Container(
                        width: double.infinity,
                        height: 70,
                        decoration: BoxDecoration(),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              width: MediaQuery.sizeOf(context).width * 0.88,
                              height: double.infinity,
                              decoration: BoxDecoration(),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 48,
                                    height: 50,
                                    decoration: BoxDecoration(),
                                    alignment: AlignmentDirectional(0, 0),
                                    child: Text(
                                      '1',
                                      style: TextStyle(
                                        fontFamily: 'Readex Pro',
                                        fontSize: 20,
                                        fontWeight: FontWeight.w800,
                                        color: Color(0xFF2B2B2B),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      width: double.infinity,
                                      height: 50,
                                      decoration: BoxDecoration(),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Speak Now (Taylor\'s Version)',
                                            maxLines: 1,
                                            style: TextStyle(
                                              fontFamily: 'NotoSerifSC',
                                              color: Color(0xFF474747),
                                              fontSize: 16,
                                              fontWeight: FontWeight.w800,
                                            ),
                                          ),
                                          Text(
                                            'Taylor Swift',
                                            maxLines: 1,
                                            style: TextStyle(
                                              fontFamily: 'NotoSerifSC',
                                              color: Color(0xFF767676),
                                              fontSize: 12,
                                              fontWeight: FontWeight.w300,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Container(
                                width: double.infinity,
                                height: double.infinity,
                                decoration: BoxDecoration(),
                                alignment: AlignmentDirectional(0, 0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 4, 0),
                                  child: Icon(
                                    Icons.more_vert,
                                    color: Color(0xFF6B6B6B),
                                    size: 22,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        height: 70,
                        decoration: BoxDecoration(),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              width: MediaQuery.sizeOf(context).width * 0.88,
                              height: double.infinity,
                              decoration: BoxDecoration(),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 48,
                                    height: 50,
                                    decoration: BoxDecoration(),
                                    alignment: AlignmentDirectional(0, 0),
                                    child: Icon(
                                      Icons.graphic_eq_rounded,
                                      size: 24,
                                      color: Color(0xFF2B2B2B),
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      width: double.infinity,
                                      height: 50,
                                      decoration: BoxDecoration(),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Back To December (Taylor\'s Version)',
                                            maxLines: 1,
                                            style: TextStyle(
                                              fontFamily: 'NotoSerifSC',
                                              color: Color(0xFF474747),
                                              fontSize: 16,
                                              fontWeight: FontWeight.w800,

                                            ),
                                          ),
                                          Text(
                                            'Taylor Swift',
                                            maxLines: 1,
                                            style: TextStyle(
                                              fontFamily: 'NotoSerifSC',
                                              color: Color(0xFF767676),
                                              fontSize: 12,
                                              fontWeight: FontWeight.w300,

                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Container(
                                width: double.infinity,
                                height: double.infinity,
                                decoration: BoxDecoration(),
                                alignment: AlignmentDirectional(0, 0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 4, 0),
                                  child: Icon(
                                    Icons.more_vert,
                                    color: Color(0xFF6B6B6B),
                                    size: 22,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        height: 70,
                        decoration: BoxDecoration(),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              width: MediaQuery.sizeOf(context).width * 0.88,
                              height: double.infinity,
                              decoration: BoxDecoration(),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 48,
                                    height: 50,
                                    decoration: BoxDecoration(),
                                    alignment: AlignmentDirectional(0, 0),
                                    child: Text(
                                      '3',
                                      style: TextStyle(
                                        fontFamily: 'Readex Pro',
                                        fontSize: 20,
                                        fontWeight: FontWeight.w800,
                                        color: Color(0xFF2B2B2B),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      width: double.infinity,
                                      height: 50,
                                      decoration: BoxDecoration(),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'The Story Of Us (Taylor\'s Version)',
                                            maxLines: 1,
                                            style: TextStyle(
                                              fontFamily: 'NotoSerifSC',
                                              color: Color(0xFF474747),
                                              fontSize: 16,
                                              fontWeight: FontWeight.w800,
                                            ),
                                          ),
                                          Text(
                                            'Taylor Swift',
                                            maxLines: 1,
                                            style: TextStyle(
                                              fontFamily: 'NotoSerifSC',
                                              color: Color(0xFF767676),
                                              fontSize: 12,
                                              fontWeight: FontWeight.w300,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Container(
                                width: double.infinity,
                                height: double.infinity,
                                decoration: BoxDecoration(),
                                alignment: AlignmentDirectional(0, 0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 4, 0),
                                  child: Icon(
                                    Icons.more_vert,
                                    color: Color(0xFF6B6B6B),
                                    size: 22,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
