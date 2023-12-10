import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get_it/get_it.dart';

import 'screens/home/home_controller.dart';
import 'screens/home/home_screen.dart';
import 'services/api_service.dart';
import 'services/dio_service.dart';
import 'services/logger_service.dart';
import 'theme.dart';

final getIt = GetIt.instance;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  /// Make sure the orientation is only `portrait`
  await SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitUp],
  );

  /// Initialize services
  getIt
    ..registerSingleton<LoggerService>(LoggerService())
    ..registerSingleton<DioService>(
      DioService(getIt<LoggerService>()),
    )
    ..registerSingleton<APIService>(
      APIService(
        logger: getIt<LoggerService>(),
        dio: getIt<DioService>().dio,
      ),
    )
    ..registerLazySingleton<HomeController>(
      () => HomeController(
        logger: getIt<LoggerService>(),
        api: getIt<APIService>(),
      ),
    );

  /// Run [PurrFact]
  runApp(PurrFactApp());
}

class PurrFactApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'PurrFact',
        theme: theme,
        home: HomeScreen(),
      );
}
