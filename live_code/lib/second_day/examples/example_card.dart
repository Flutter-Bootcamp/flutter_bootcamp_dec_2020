import 'package:flutter/material.dart';

class ExampleCard extends StatefulWidget {
  @override
  _ExampleCardState createState() => _ExampleCardState();
}

class _ExampleCardState extends State<ExampleCard> {
  final List<Color> colorList = [
    Colors.yellow,
    Colors.limeAccent,
    Colors.lightBlue,
    Colors.deepOrangeAccent,
  ];
  Color color;
  int index;

  @override
  void initState() {
    super.initState();
    index = 0;
    color = colorList[index];
  }

  _decrement(){
    if(index>0){
      setState(() {
        this.index--;
        this.color = colorList[this.index];
      });
    } else {
      print('NOPE!');
    }
  }

  _increment(){
    if(index<colorList.length-1){
      setState(() {
        index++;
        color = colorList[index];
      });
    } else {
      print('At least you\'ve tried!');
    }
  }
  @override
  Widget build(BuildContext context) {
    print('ExampleCard is in the building');
    return Card(
      color: color,
      child: Container(
        height: 110,
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
    );
  }
}
