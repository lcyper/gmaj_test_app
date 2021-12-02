// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:gmaj_test_app/widgets/box.dart';
import 'package:random_color/random_color.dart';

class Bienvenida extends StatelessWidget {
  Bienvenida({Key key}) : super(key: key);

  List<Color> boxes =
      List.generate(20, (int index) => RandomColor().randomColor());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 20),
          // mainAxisAlignment: MainAxisAlignment.start,
          // mainAxisSize: MainAxisSize.min,
          children: boxes
              .map(
                (Color color) => Box(color),
              )
              .toList(),
        ),
      ),
    );
  }
}
