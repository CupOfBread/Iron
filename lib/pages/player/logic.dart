import 'package:get/get.dart';
import 'package:get_it/get_it.dart';
import 'package:iron/services/global_value.dart';
import 'state.dart';

class PlayerLogic extends GetxController {
  final PlayerState state = PlayerState();
  final GLOBAL_VALUE = GetIt.I<GlobalValue>();
}
