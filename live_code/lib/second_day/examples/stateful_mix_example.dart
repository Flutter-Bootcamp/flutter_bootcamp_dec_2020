import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'example_card.dart';

class StatefulMixExample extends StatefulWidget {

  @override
  _StatefulMixExampleState createState() => _StatefulMixExampleState();
}

class _StatefulMixExampleState extends State<StatefulMixExample> {
  int pivot;

  @override
  void initState() {
    super.initState();
    pivot = 10;
  }

  @override
  Widget build(BuildContext context) {
    print('Parent is building');
    return Scaffold(
      backgroundColor: CupertinoColors.systemGrey5,
      appBar: AppBar(
          title: const Text('Flutter Bootcamp 2020'),
        actions: [
          IconButton(
            icon: Icon(Icons.settings_backup_restore, color: Colors.white),
            onPressed: (){
              setState(() {
                pivot++;
              });
            },
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ExampleCard(),
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
