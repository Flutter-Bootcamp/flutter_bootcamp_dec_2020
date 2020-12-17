import 'package:examples/examples/stateless_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TweenBuilderExample extends StatefulWidget {
  @override
  _TweenBuilderExampleState createState() => _TweenBuilderExampleState();
}

class _TweenBuilderExampleState extends State<TweenBuilderExample> {
  String text;
  @override
  Widget build(BuildContext context) {
    print('Building but not restarting animation');
    return Scaffold(
      backgroundColor: CupertinoColors.systemGrey5,
      appBar: AppBar(title: const Text('Flutter BootCamp 2020')),
      body: TweenAnimationBuilder(
        duration: Duration(seconds: 1),
        //tween: Tween<double>(begin: 1, end: 100),
        //tween: IntTween(begin: 1, end: 100),
        //tween: Tween<double>(begin: 1.0, end: 100.0)
        tween: ColorTween(begin: Colors.yellow, end: Colors.red),
        builder: (BuildContext context, value, Widget child) {
          return StatelessCard(
            color: value,
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            text='hello';
          });
        },
      ),
    );
  }
}
