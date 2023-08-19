import 'package:path_provider/path_provider.dart';

class GlobalValue{
  late final applicationDocumentsDirectory;

  GlobalValue(){
    _init();
  }

  Future<void> _init() async {
    applicationDocumentsDirectory = await getApplicationDocumentsDirectory();
  }
}