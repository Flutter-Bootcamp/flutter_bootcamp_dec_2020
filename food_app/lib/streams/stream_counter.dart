import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StreamCounter extends StatefulWidget {
  @override
  _StreamCounterState createState() => _StreamCounterState();
}

class _StreamCounterState extends State<StreamCounter> {
  int _counter = 0;
  final StreamController _streamController = StreamController<int>();

  @override
  void dispose() {
    _streamController.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    /// note that the widget will not get rebuilt if we change our value

    print('hello i\'m not rebuilding');

    return Scaffold(
      appBar: AppBar(title: Text('Stream Builder')),
      body: Center(
        child: StreamBuilder<int>(
          stream: _streamController.stream,
          initialData: _counter,
          builder: (BuildContext context, AsyncSnapshot<int> snapshot){
            return Text('You\'ve pushed the button: ${snapshot.data} times');
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          _streamController.sink.add(++_counter);
        },
      ),
    );
  }
}