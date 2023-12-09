import 'package:flutter/material.dart';

import '../../../constants/colors.dart';
import '../../../widgets/scale_button.dart';

class FactButton extends StatelessWidget {
  final Function() onPressed;
  final String text;

  const FactButton({
    required this.onPressed,
    required this.text,
  });

  @override
  Widget build(BuildContext context) => ScaleButton(
        onPressed: onPressed,
        child: Container(
          decoration: PurrFactColors.neumorphicShadow,
          child: ElevatedButton(
            onPressed: () {},
            child: Text(
              text,
              style: Theme.of(context).textTheme.labelLarge,
            ),
          ),
        ),
      );
}
