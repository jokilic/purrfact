import 'package:flutter/material.dart';

import 'cat_widget.dart';

class CatsRow extends StatelessWidget {
  final List<CatWidget> cats;

  CatsRow.first()
      : cats = [
          const CatWidget('assets/maca1.png'),
          const CatWidget('assets/maca2.png'),
        ];

  CatsRow.second()
      : cats = [
          const CatWidget('assets/maca3.png'),
          const CatWidget('assets/maca4.png'),
        ];

  @override
  Widget build(BuildContext context) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: cats,
      );
}
