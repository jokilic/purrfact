import 'package:flutter/material.dart';

class CatWidget extends StatelessWidget {
  final String catImage;

  const CatWidget(this.catImage);

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.all(24),
        child: Image.asset(
          catImage,
          width: 56,
        ),
      );
}
