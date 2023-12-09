import 'package:flutter/material.dart';
import 'package:watch_it/watch_it.dart';

import '../../main.dart';
import 'home_controller.dart';
import 'widgets/cats_row.dart';
import 'widgets/fact_button.dart';
import 'widgets/fact_card.dart';

class HomeScreen extends WatchingStatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    getIt<HomeController>().getFact();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CatsRow.first(),
              Column(
                children: [
                  FactCard(
                    text: watchValue<HomeController, String>(
                      (controller) => controller.fact,
                    ),
                    isLoading: watchValue<HomeController, bool>(
                      (controller) => controller.isLoading,
                    ),
                  ),
                  const SizedBox(height: 24),
                  FactButton(
                    onPressed: getIt<HomeController>().getFact,
                    text: 'Cat fact'.toUpperCase(),
                  ),
                ],
              ),
              CatsRow.second(),
            ],
          ),
        ),
      );
}
