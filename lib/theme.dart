import 'package:flutter/material.dart';

import 'constants/colors.dart';

final theme = ThemeData(
  fontFamily: 'Product Sans',
  scaffoldBackgroundColor: PurrFactColors.primaryColor,
  textTheme: const TextTheme(
    bodyLarge: TextStyle(
      fontSize: 20,
      color: PurrFactColors.primaryColor,
    ),
    labelLarge: TextStyle(
      fontSize: 20,
      color: PurrFactColors.secondaryColor,
    ),
  ),
  cardTheme: CardTheme(
    margin: const EdgeInsets.symmetric(horizontal: 36),
    elevation: 0,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(16),
    ),
    color: PurrFactColors.secondaryColor,
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      backgroundColor: PurrFactColors.primaryColor,
      foregroundColor: PurrFactColors.primaryColor,
      padding: const EdgeInsets.all(28),
    ),
  ),
);
