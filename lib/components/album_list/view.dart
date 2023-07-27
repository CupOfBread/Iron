import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iron/router/app_pages.dart';

import 'logic.dart';

class AlbumListComponent extends StatelessWidget {
  const AlbumListComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final logic = Get.put(AlbumListLogic());
    final state = Get.find<AlbumListLogic>().state;

    return ListView(
      padding: EdgeInsets.fromLTRB(
        0,
        0,
        0,
        0,
      ),
      scrollDirection: Axis.vertical,
      children: [
        Container(
          width: double.infinity,
          height: 36,
          decoration: BoxDecoration(),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(7, 0, 0, 0),
                child: Container(
                  height: double.infinity,
                  decoration: BoxDecoration(),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(),
                      ),
                    ],
                  ),
                ),
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
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 16),
              child: GestureDetector(
                onTap: (){
                  Get.toNamed(AppRoutes.Album);
                },
                child: Container(
                  width: 170,
                  decoration: BoxDecoration(),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.network(
                          'http://p2.music.126.net/3MQls4eG_yJR_HaYXPMWlA==/109951168728387752.jpg?param=230y230',
                          width: 170,
                          height: 170,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Text(
                        'Speak Now (Taylor\'s Version)',
                        textAlign: TextAlign.start,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontFamily: 'NotoSerifSC',
                          fontSize: 15,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      Text(
                        '15首 - Taylor Swift',
                        style: TextStyle(
                          fontFamily: 'NotoSerifSC',
                          color: Color(0xFF696969),
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 16),
              child: Container(
                width: 170,
                decoration: BoxDecoration(),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.network(
                        'http://p2.music.126.net/GuP1K0O5tIjzzT6ksWqRlQ==/109951168663581864.jpg?param=220y220',
                        width: 170,
                        height: 170,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Text(
                      'Midnights (The Til Dawn Edition)',
                      textAlign: TextAlign.start,
                      maxLines: 1,
                      style: TextStyle(
                        fontFamily: 'NotoSerifSC',
                        fontSize: 15,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    Text(
                      '15首 - Taylor Swift',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontFamily: 'NotoSerifSC',
                        color: Color(0xFF696969),
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 16),
              child: Container(
                width: 170,
                decoration: BoxDecoration(),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.network(
                        'https://p2.music.126.net/uAfW09c_7PJ18bvwFspYQw==/109951166162939168.jpg?param=600y600',
                        width: 170,
                        height: 170,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Text(
                      'Joanne (Deluxe)',
                      textAlign: TextAlign.start,
                      maxLines: 1,
                      style: TextStyle(
                        fontFamily: 'NotoSerifSC',
                        fontSize: 15,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    Text(
                      '14首 - Lady Gaga',
                      style: TextStyle(
                        fontFamily: 'NotoSerifSC',
                        color: Color(0xFF696969),
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 16),
              child: Container(
                width: 170,
                decoration: BoxDecoration(),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.network(
                        'https://p1.music.126.net/s-RX4DnzNQdcOM0pRNrVxQ==/109951166556851964.jpg?param=600y600',
                        width: 170,
                        height: 170,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Text(
                      'David Tao 同名专辑',
                      textAlign: TextAlign.start,
                      maxLines: 1,
                      style: TextStyle(
                        fontFamily: 'NotoSerifSC',
                        fontSize: 15,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    Text(
                      '15首 - 陶喆',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontFamily: 'NotoSerifSC',
                        color: Color(0xFF696969),
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 16),
              child: Container(
                width: 170,
                decoration: BoxDecoration(),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.network(
                        'https://p2.music.126.net/RHvOnjS6lxCxRRXlH1FjIw==/109951168704179066.jpg?param=600y600',
                        width: 170,
                        height: 170,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Text(
                      '流沙 (Reimagined)',
                      textAlign: TextAlign.start,
                      maxLines: 1,
                      style: TextStyle(
                        fontFamily: 'NotoSerifSC',
                        fontSize: 15,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    Text(
                      '1首 - 陶喆',
                      style: TextStyle(
                        fontFamily: 'NotoSerifSC',
                        color: Color(0xFF696969),
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 16),
              child: Container(
                width: 170,
                decoration: BoxDecoration(),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.network(
                        'http://p2.music.126.net/zmDE8IMf0QKDLVQc1xh4RA==/109951165973312283.jpg?param=600y600',
                        width: 170,
                        height: 170,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Text(
                      'This Is Acting',
                      textAlign: TextAlign.start,
                      maxLines: 1,
                      style: TextStyle(
                        fontFamily: 'NotoSerifSC',
                        fontSize: 15,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    Text(
                      '14首 - Sia',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontFamily: 'NotoSerifSC',
                        color: Color(0xFF696969),
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: 170,
              decoration: BoxDecoration(),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.network(
                      'http://p2.music.126.net/Wr13D68yaaknFmxTD5xnoQ==/18569651881855121.jpg?param=600y600',
                      width: 170,
                      height: 170,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Text(
                    '流沙 (Reimagined)',
                    textAlign: TextAlign.start,
                    maxLines: 1,
                    style: TextStyle(
                      fontFamily: 'NotoSerifSC',
                      fontSize: 15,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  Text(
                    '1首 - 陶喆',
                    style: TextStyle(
                      fontFamily: 'NotoSerifSC',
                      color: Color(0xFF696969),
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 170,
              decoration: BoxDecoration(),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.network(
                      'http://p1.music.126.net/xuFy0k8O_xKuAqbbjC24Ig==/109951166497586944.jpg?param=600y600',
                      width: 170,
                      height: 170,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Text(
                    'This Is Acting',
                    textAlign: TextAlign.start,
                    maxLines: 1,
                    style: TextStyle(
                      fontFamily: 'NotoSerifSC',
                      fontSize: 15,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  Text(
                    '14首 - Sia',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontFamily: 'NotoSerifSC',
                      color: Color(0xFF696969),
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
