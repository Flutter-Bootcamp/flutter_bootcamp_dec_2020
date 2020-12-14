import 'package:examples/1st_day/widgets_presentation.dart';
import 'package:examples/examples/setState_injection_example.dart';
import 'package:examples/examples/stateful_mix_example.dart';
import 'package:examples/homepage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'examples/stateful_example.dart';

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
      home: WidgetPresentation(),
    );
  }
}

