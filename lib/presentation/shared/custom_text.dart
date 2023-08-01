import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText(
      {super.key, required this.text, required this.fontSize, fontWeight})
      : fontWeight_ = fontWeight ?? FontWeight.bold;

  final String text;
  final double fontSize;
  final FontWeight fontWeight_;
  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Text(
      text,
      style: TextStyle(
          color: colors.primary,
          fontSize: fontSize,
          fontWeight: fontWeight_),
    );
  }
}
