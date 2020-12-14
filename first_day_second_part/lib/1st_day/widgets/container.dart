import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ExampleContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Example container')),
      body: Center(
        child: Container(
          //padding:
          //margin:
          width: 100,
          height: 100,
          //color: Colors.blue,
          //color: CupertinoColors.activeBlue
          //color: Color.fromRGBO(0, 300, 200, 1)
          //decoration
          // -> color/border/shadow/borderRadius

          /**

            In order to add a Shadow:
            decoration: BoxDecoration(
              color: Colors.blue,
              boxShadow: [
              BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
              ),
              ],

              if I want just a single borderRadius:
              -> borderRadius: BorderRadius.only(topRight:  Radius.circular(40)),

              if I want a single border:
              -> border: Border(
              top: BorderSide(width: 16.0, color: Colors.lightBlue.shade600),
              bottom: BorderSide(width: 16.0, color: Colors.lightBlue.shade900),
              )
              ),
           * */
        )
      )
    );
  }
}
