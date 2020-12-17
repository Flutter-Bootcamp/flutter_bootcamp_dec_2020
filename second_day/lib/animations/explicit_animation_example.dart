import 'package:examples/examples/stateless_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ExplicitAnimationExample extends StatefulWidget {
  @override
  _ExplicitAnimationExampleState createState() => _ExplicitAnimationExampleState();
}

class _ExplicitAnimationExampleState extends State<ExplicitAnimationExample>
    with SingleTickerProviderStateMixin{

  AnimationController _animationController;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }




  /*

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: Duration(seconds: 2),
      vsync: this,
    )..addStatusListener((status) {
      print(status);
    });//..forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CupertinoColors.black,
      appBar: AppBar(title: const Text('Flutter BootCamp 2020')),
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              width: 200,
              height: 400,
              decoration: BoxDecoration(
                color: Colors.black,
                border: Border.all(color: Colors.red, width: 10)
              ),
            ),
            RotationTransition(
              child: Container(width: 400, height: 200, color: Colors.white,),
              turns: _animationController,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if(_animationController.isCompleted) {
            _animationController.reset();
            _animationController.forward();
          } else if (_animationController.isAnimating) {
            _animationController.stop();
          } else {
            _animationController.forward();
          }
        },
      ),
    );
  }
  */
}
