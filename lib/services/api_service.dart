import 'package:dio/dio.dart';

import '../models/fact.dart';
import 'logger_service.dart';

class APIService {
  ///
  /// CONSTRUCTOR
  ///

  final LoggerService logger;
  final Dio dio;

  APIService({
    required this.logger,
    required this.dio,
  }) {
    logger.t('APIService initialized');
  }

  ///
  /// `fact`
  ///
  Future<({Fact? fact, String? error})> getFact() async {
    try {
      final response = await dio.get('/fact');

      if (response.statusCode == 200) {
        final parsedResponse = Fact.fromMap(response.data);
        return (fact: parsedResponse, error: null);
      } else {
        final error = 'APIService -> getFact -> StatusCode ${response.statusCode}';
        logger.e(error);
        return (fact: null, error: error);
      }
    } catch (e) {
      final error = 'APIService -> getFact -> $e';
      logger.e(error);
      return (fact: null, error: error);
    }
  }
}
