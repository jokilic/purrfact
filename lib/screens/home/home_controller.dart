import 'package:flutter/material.dart';

import '../../services/api_service.dart';

class HomeController {
  final APIService api;

  HomeController({
    required this.api,
  });

  final isLoading = ValueNotifier<bool>(false);
  final fact = ValueNotifier<String>('');

  /// Returns a new fact from the backend
  Future<void> getFact() async {
    if (isLoading.value) {
      return;
    }

    isLoading.value = true;

    await Future.delayed(const Duration(milliseconds: 1200));

    final response = await api.getFact();

    /// Fact is fetched successfully
    if (response.fact != null && response.error == null) {
      final value = response.fact!.fact;
      fact.value = value;
    }

    /// Fact not fetched successfully
    else {
      final value = response.error ?? 'HomeController -> getFact -> null';
      fact.value = value;
    }

    isLoading.value = false;
  }
}
