import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AnimatedContainerExample extends StatefulWidget {
  @override
  _AnimatedContainerExampleState createState() =>
      _AnimatedContainerExampleState();
}

class _AnimatedContainerExampleState extends State<AnimatedContainerExample> {
  bool isActive;
  double _height;
  double _width;
  Color _color;
  Timer timer;

  @override
  void initState() {
    super.initState();
    isActive = true;
    _height = 200;
    _width = 200;
    _color = Colors.yellow;
  }

  setParameters(){
    setState(() {
      isActive = !isActive;
      _height = isActive? 200 : 300;
      _width = isActive? 200 : 300;
      _color = isActive? Colors.yellow : Colors.blue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Flutter BootCamp 2020')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedContainer(
                duration: Duration(milliseconds: 100),
                height: _height,
                width: _width,
                color: _color,
              ),
              RaisedButton(
                color: Colors.black,
                child: Text('Tap me', style: TextStyle(color: Colors.white),),
                onPressed: (){
                  //setParameters();
                  if(timer?.isActive ?? false) {
                    timer?.cancel();
                  }
                  else
                  timer = Timer.periodic(Duration(seconds: 1), (timer) {
                    setParameters();
                  });
                },
              ),
            ],
          ),
        )
    );
  }
}
