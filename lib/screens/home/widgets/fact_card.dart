import 'package:flutter/material.dart';

import 'fact_loading.dart';

class FactCard extends StatelessWidget {
  final String text;
  final bool isLoading;

  const FactCard({
    required this.text,
    required this.isLoading,
  });

  @override
  Widget build(BuildContext context) => Card(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: AnimatedSize(
            duration: const Duration(milliseconds: 200),
            curve: Curves.easeIn,
            child: ConstrainedBox(
              constraints: const BoxConstraints(
                minHeight: 120,
                maxHeight: 280,
                minWidth: double.infinity,
              ),
              child: AnimatedSwitcher(
                duration: const Duration(milliseconds: 200),
                switchInCurve: Curves.easeIn,
                switchOutCurve: Curves.easeIn,
                child: isLoading
                    ? FactLoading()
                    : SingleChildScrollView(
                        physics: const BouncingScrollPhysics(),
                        child: Text(
                          text,
                          style: Theme.of(context).textTheme.bodyLarge,
                          textAlign: TextAlign.center,
                        ),
                      ),
              ),
            ),
          ),
        ),
      );
}
