import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final String fontFamily;
  final double textSize;
  final Color color;
  final FontWeight textFontWeight;
  final TextAlign textAlign;
  CustomText({
    super.key,
    required this.text,
    this.color = const Color.fromARGB(255, 77, 21, 1),
    this.textSize = 14,
    this.fontFamily = 'Space',
    this.textFontWeight = FontWeight.w500,
    this.textAlign = TextAlign.start,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: color,
          fontSize: textSize,
          fontFamily: fontFamily,
          fontWeight: textFontWeight),
      textAlign: textAlign,
    );
  }
}
