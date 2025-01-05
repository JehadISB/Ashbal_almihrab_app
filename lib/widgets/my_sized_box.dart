import 'package:flutter/material.dart';

class MyVerticalSizedBox extends StatelessWidget {
  const MyVerticalSizedBox({super.key, this.height});
  final double? height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? 10,
    );
  }
}
