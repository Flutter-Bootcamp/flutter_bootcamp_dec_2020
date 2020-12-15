import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StatelessCard extends StatelessWidget {
  final Function firstFunction;
  final Function secondFunction;
  final Color color;

  const StatelessCard({this.firstFunction, this.secondFunction, this.color});

  @override
  Widget build(BuildContext context) {
    return Card(
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
                  onPressed: firstFunction,
                ),
                Spacer(),
                Text('WE DO LOVE FLUTTER', style: TextStyle(fontWeight: FontWeight.bold),),
                Spacer(),
                IconButton(
                  icon: Icon(Icons.edit),
                  onPressed: secondFunction,
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