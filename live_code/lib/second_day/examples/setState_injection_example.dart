import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'example_card_with_button.dart';

class SetStateInjectionExample extends StatefulWidget {
  final List<Color> colorList = [
    Colors.yellow,
    Colors.limeAccent,
    Colors.lightBlue,
    Colors.deepOrangeAccent,
  ];

  @override
  _SetStateInjectionExampleState createState() => _SetStateInjectionExampleState();
}

class _SetStateInjectionExampleState extends State<SetStateInjectionExample> {
  Color color;
  int index;
  int pivot;

  @override
  void initState() {
    super.initState();
    pivot = 10;
    index = 0;
    color = widget.colorList[index];
  }

  _incrementPivot(){
    setState(() {
      pivot++;
    });
  }

  @override
  Widget build(BuildContext context) {
    print('Parent is in the building');
    return Scaffold(
        backgroundColor: CupertinoColors.systemGrey5,
        appBar: AppBar(
          title: const Text('Flutter Bootcamp 2020'),
          actions: [
            IconButton(
              icon: Icon(Icons.settings_backup_restore, color: Colors.white),
              onPressed: (){
                _incrementPivot();
              },
            )
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            ExampleCardWithButton(function: _incrementPivot),
            SizedBox(height: 20),
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                  color: Colors.orange,
                  shape: BoxShape.circle,
                  border: Border.all()
              ),
              child: Center(child: Text(pivot.toString())),
            ),
          ],
        )
    );
  }
}
