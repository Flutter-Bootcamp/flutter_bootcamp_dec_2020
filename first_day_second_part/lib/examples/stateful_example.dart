import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ExampleOnlyStateful extends StatefulWidget {
  final List<Color> colorList = [
    Colors.yellow,
    Colors.limeAccent,
    Colors.lightBlue,
    Colors.deepOrangeAccent,
  ];

  @override
  _ExampleOnlyStatefulState createState() => _ExampleOnlyStatefulState();
}

class _ExampleOnlyStatefulState extends State<ExampleOnlyStateful> {
  Color color;
  int index;

  @override
  void initState() {
    super.initState();
    index = 0;
    color = widget.colorList[index];
  }

  _decrement(){
    if(index>0){
      setState(() {
        this.index--;
        this.color = widget.colorList[this.index];
      });
    } else {
      print('NOPE!');
    }
  }

  _increment(){
    if(index<widget.colorList.length-1){
      setState(() {
        index++;
        color = widget.colorList[index];
      });
    } else {
      print('At least you\'ve tried!');
    }
  }
  @override
  Widget build(BuildContext context) {
    print('Widget is in the building');
    return Scaffold(
      backgroundColor: CupertinoColors.systemGrey5,
      appBar: AppBar(title: const Text('Flutter BootCamp 2020')),
      body: Center(
        child: Card(
          color: color,
          child: Container(
            height: 100,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                Row(
                  children: [
                    IconButton(
                      icon: Icon(Icons.keyboard_return),
                      onPressed: _decrement,
                    ),
                    Spacer(),
                    Text('WE DO LOVE FLUTTER', style: TextStyle(fontWeight: FontWeight.bold),),
                    Spacer(),
                    IconButton(
                      icon: Icon(Icons.edit),
                      onPressed: _increment,
                    ),
                  ],
                ),
                SizedBox(height: 15,),
                Text('I\'m just a simple card')
              ],
            ),
          ),
        ),
      ),
    );
  }
}
