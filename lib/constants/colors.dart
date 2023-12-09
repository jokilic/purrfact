import 'package:flutter/material.dart';

class PurrFactColors {
  static const Color primaryColor = Color(0xFF27786F);
  static const Color secondaryColor = Color(0xFFFFFFFF);

  static const BoxDecoration neumorphicShadow = BoxDecoration(
    boxShadow: [
      BoxShadow(
        color: Color(0xFF21665E),
        blurRadius: 32,
        offset: Offset(16, 16),
        spreadRadius: -8,
      ),
      BoxShadow(
        color: Color(0xFF2D8A80),
        blurRadius: 32,
        offset: Offset(-16, 8),
        spreadRadius: -8,
      ),
    ],
  );
}
