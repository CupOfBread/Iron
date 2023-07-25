import 'package:get/get.dart';
import 'package:iron/pages/home/view.dart';
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
      // transition: Transition.downToUp,
    ),
  ];
}
