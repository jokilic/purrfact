import 'dart:math';

import 'package:flutter/material.dart';

import 'cat_widget.dart';

class FactLoading extends StatefulWidget {
  @override
  State<FactLoading> createState() => _FactLoadingState();
}

class _FactLoadingState extends State<FactLoading> with SingleTickerProviderStateMixin {
  late final AnimationController animationController;
  late final int randomNumber;

  @override
  void initState() {
    super.initState();

    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 900),
    )..repeat();

    randomNumber = Random().nextInt(4) + 1;
  }

  @override
  Widget build(BuildContext context) => AnimatedBuilder(
        animation: animationController,
        builder: (_, child) => Transform.rotate(
          angle: animationController.value * 2 * pi,
          child: child,
        ),
        child: CatWidget(
          'assets/maca$randomNumber.png',
        ),
      );

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }
}
