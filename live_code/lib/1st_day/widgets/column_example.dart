import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ExampleColumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    /// HOW TO HANDLE OVERFLOW:
    /// Column -> ListView
    /// Column -> SingleChildScrollView

    return Scaffold(
        appBar: AppBar(title: Text('Example container')),
        body: Center(
            child: Column(
              //mainAxisSize: MainAxisSize.min,
              //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    border: Border.all()
                  ),
                ),
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      border: Border.all()
                  ),
                ),
              ],
            )
        )
    );
  }
}
