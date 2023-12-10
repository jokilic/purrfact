import 'package:dio/dio.dart';

import 'logger_service.dart';

///
/// Service which holds an instance of `Dio`
/// Used for networking
/// Contains methods that ease our networking logic
///

class DioService {
  ///
  /// CONSTRUCTOR
  ///

  final LoggerService logger;

  DioService(this.logger) {
    logger.t('DioService initialized');
  }

  ///
  /// VARIABLES
  ///

  late final dio = Dio(
    BaseOptions(
      baseUrl: 'https://catfact.ninja',
    ),
  )..interceptors.add(
      DioLoggerInterceptor(logger),
    );
}
