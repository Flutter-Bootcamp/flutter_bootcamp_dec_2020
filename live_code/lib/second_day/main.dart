import 'package:flutter/material.dart';
import 'package:live_code/second_day/stateful_example.dart';

import 'animations/explicit_animation_example.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ExplicitAnimationExample(),
    );
  }
}
