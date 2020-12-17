import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';


class LoadingPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new LoadingPageState();
}

class LoadingPageState extends State<LoadingPage>
    with SingleTickerProviderStateMixin {

  AnimationController controller;
  Animation flipAnim;


  void initState() {
    super.initState();

    controller =
        AnimationController(duration: Duration(seconds: 3), vsync: this);

    flipAnim = Tween(begin: 0.0, end: 1.0).animate(CurvedAnimation(
        parent: controller, curve: Interval(0.0, 0.5, curve: Curves.linear)));
  }

  @override
  dispose() {
    controller.dispose(); // you need this
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Flutter BootCamp2020'),),
        backgroundColor: CupertinoColors.black,
        body: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              top: 80,
              child: Text(
                'Flutter Bootcamp',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Frutiger',
                    fontSize: 30,
                    color: CupertinoColors.white),
              ),
            ),

            Positioned(
              bottom: MediaQuery.of(context).size.height / 13,
              child: Column(
                children: [
                  Text("Developed  by",
                      style: TextStyle(
                          color: CupertinoColors.white,
                          fontWeight: FontWeight.w200,
                          letterSpacing: -1,
                          fontSize: 12)),
                  Container(
                    height: 2,
                  ),
                  Text(
                    "OAK INNOVATIONS s.r.l.",
                    style: TextStyle(
                      letterSpacing: -1,
                      color: CupertinoColors.white,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: MediaQuery.of(context).size.height / 7,
              child: AnimatedBuilder(
                  animation: controller,
                  builder: (BuildContext context, Widget child) {
                    return Container(
                      height: 100.0,
                      width: 100.0,
                      child: Transform(
                        transform: Matrix4.identity()
                          ..rotateY(2 * pi * flipAnim.value),
                        alignment: Alignment.center,
                        child: Image.asset("images/oak.png"),
                      ),
                    );
                  }),
            ),
          ],
        ));
  }
}

