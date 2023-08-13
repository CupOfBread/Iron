import 'package:get/get.dart';
import 'package:iron/pages/album_detail/view.dart';
import 'package:iron/pages/artist_detail/view.dart';
import 'package:iron/pages/home/view.dart';
import 'package:iron/pages/media_source/view.dart';
import 'package:iron/pages/player/view.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = AppRoutes.Home;

  static final routes = [
    GetPage(
      name: AppRoutes.Home,
      page: () => HomePage(),
    ),
    GetPage(
      name: AppRoutes.Player,
      page: () => PlayerPage(),
    ),
    GetPage(
      name: AppRoutes.Album,
      page: () => AlbumDetailPage(),
    ),
    GetPage(
      name: AppRoutes.Artist,
      page: () => ArtistDetailPage(),
    ),
    GetPage(
      name: AppRoutes.MediaSource,
      page: () => MediaSourcePage(),
    ),
  ];
}
