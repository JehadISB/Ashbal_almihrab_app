import 'package:ashbal_almihrab_app/views/home_view.dart';
import 'package:ashbal_almihrab_app/views/spalsh_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const AshbalAlmihrabApp());
}

class AshbalAlmihrabApp extends StatelessWidget {
  const AshbalAlmihrabApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SpalshView(),
      debugShowCheckedModeBanner: false,
    );
  }
}
