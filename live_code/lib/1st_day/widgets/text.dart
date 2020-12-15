import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ExampleText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Example container')),
        body: Center(
          //child: Container(
            child: Text('Flutter Bootcamp', style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 40,
              fontStyle: FontStyle.italic
            ))
        )
    );
  }
}
