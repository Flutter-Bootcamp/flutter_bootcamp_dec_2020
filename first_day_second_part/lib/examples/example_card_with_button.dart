import 'package:flutter/material.dart';

class ExampleCardWithButton extends StatefulWidget {
  final Function function;

  const ExampleCardWithButton({this.function});

  @override
  _ExampleCardWithButtonState createState() => _ExampleCardWithButtonState();
}

class _ExampleCardWithButtonState extends State<ExampleCardWithButton> {
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
            Container(
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(20)
              ),
              child: FlatButton(
                onPressed: (){
                  widget.function();
                },
                child: Text('Tap me', style: TextStyle(color: Colors.white),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
