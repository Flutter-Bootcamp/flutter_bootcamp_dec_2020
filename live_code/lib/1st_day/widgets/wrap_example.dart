import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ExampleWrap extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Example container')),
        body: Center(
            child: Wrap(
              //spacing:
              //runSpacing:
              children: [
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                      color: Colors.orange,
                      border: Border.all()
                  ),
                ),
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                      color: Colors.orange,
                      border: Border.all()
                  ),
                ),
              ],
            )
        )
    );
  }
}
