import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iron/router/app_pages.dart';

import 'logic.dart';

class ArtistListComponent extends StatelessWidget {
  const ArtistListComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final logic = Get.put(ArtistListLogic());
    final state = Get.find<ArtistListLogic>().state;

    logic.getAlbumList();

    return Column(
      mainAxisSize: MainAxisSize.max,
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
        Expanded(
          child: GetBuilder<ArtistListLogic>(
            builder: (logic) {
              return ListView(
                  padding: EdgeInsets.fromLTRB(
                    0,
                    0,
                    0,
                    80,
                  ),
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  children: state.artistList.map((item) {
                    return GestureDetector(
                      onTap: () async {
                        var result = await Get.toNamed(AppRoutes.Artist,
                            arguments: {
                              "id": item.id,
                              "wyyId": item.wyyId,
                              "ironId": item.ironId
                            });
                      },
                      child: Container(
                        width: double.infinity,
                        height: 76,
                        decoration: BoxDecoration(),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              width: MediaQuery.sizeOf(context).width * 0.85,
                              height: double.infinity,
                              decoration: BoxDecoration(),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        12, 0, 16, 0),
                                    child: Container(
                                      width: 54,
                                      height: 54,
                                      decoration: BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                            blurRadius: 4,
                                            color: Color(0x5554633F),
                                            offset: Offset(0, 2),
                                          )
                                        ],
                                        shape: BoxShape.circle,
                                      ),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(27),
                                        child: Image.network(
                                          item.avatarUrl,
                                          width: 54,
                                          height: 54,
                                          fit: BoxFit.cover,
                                        ),
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
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            item.name,
                                            maxLines: 1,
                                            style: TextStyle(
                                              fontFamily: 'NotoSerifSC',
                                              color: Color(0xFF474747),
                                              fontSize: 18,
                                              fontWeight: FontWeight.w800,
                                            ),
                                          ),
                                          Text(
                                            item.albumSize.toString() + ' 首歌',
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
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 0, 8, 0),
                                  child: Icon(
                                    Icons.favorite_border_rounded,
                                    color: Color(0xFF6B6B6B),
                                    size: 22,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }).toList());
            },
          ),
        ),
      ],
    );
  }
}
