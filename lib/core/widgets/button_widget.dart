import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    Key? key,
    required this.onTap,
    required this.text,
    this.buttonColor,
  }) : super(key: key);

  final VoidCallback onTap;
  final String text;
  final Color? buttonColor;

  static const double _borderRadius = 8;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(_borderRadius),
        child: Ink(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: buttonColor ??
                Theme.of(context).primaryColorDark.withOpacity(0.1),
            borderRadius: BorderRadius.circular(_borderRadius),
          ),
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyText1,
          ),
        ),
      ),
    );
  }
}
