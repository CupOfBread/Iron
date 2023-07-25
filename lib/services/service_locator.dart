import 'package:audio_service/audio_service.dart';
import 'package:iron/components/bottom_player_bar/logic.dart';

import 'audio_handler.dart';
import 'playlist_repository.dart';
import 'package:get_it/get_it.dart';

GetIt getIt = GetIt.instance;

Future<void> setupServiceLocator() async {
  // services
  getIt.registerSingleton<AudioHandler>(await initAudioService());
  getIt.registerLazySingleton<PlaylistRepository>(() => DemoPlaylist());

  // page state
  getIt.registerLazySingleton<BottomPlayerBarLogic>(() => BottomPlayerBarLogic());
}