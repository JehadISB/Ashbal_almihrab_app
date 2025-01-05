import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  const MyText(
      {super.key,
      required this.text,
      this.fontFamily,
      this.fontSize,
      this.color,
      this.textAlign,
      this.overflow});
  final String text;
  final String? fontFamily;
  final double? fontSize;
  final Color? color;
  final TextAlign? textAlign;
  final TextOverflow? overflow;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          overflow: TextOverflow.ellipsis,
          color: color,
          fontFamily: fontFamily ?? "LBC",
          fontSize: fontSize ?? 16),
      textAlign: textAlign,
      overflow: overflow,
    );
  }
}
