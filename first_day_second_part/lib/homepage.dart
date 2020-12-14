import 'package:examples/animations/animated_container.dart';
import 'package:examples/animations/explicit_animation_example.dart';
import 'package:examples/animations/example_loading.dart';
import 'package:examples/animations/tween_builder.dart';
import 'package:examples/examples/setState_injection_example.dart';
import 'package:examples/examples/stateful_example.dart';
import 'package:examples/examples/stateful_mix_example.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flutter BootCamp 2020')),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            Container(
              alignment: Alignment.center,
              height: 80,
              decoration: BoxDecoration(
                color: Colors.lightBlueAccent,
                border: Border.all(),
                borderRadius: BorderRadius.circular(10)
              ),
              child: const Text('State Management', style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            const SizedBox(height: 10),
            Container(
              child: FlatButton(
                color: CupertinoColors.systemGrey5,
                child: Text('Simple Stateful class'),
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ExampleOnlyStateful()),
                ),
              ),
            ),
            Container(
              child: FlatButton(
                color: CupertinoColors.systemGrey5,
                child: const Text('Nested Stateful widget'),
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => StatefulMixExample()),
                ),
              ),
            ),
            Container(
              child: FlatButton(
                color: CupertinoColors.systemGrey5,
                child: const Text('setState() injection'),
                onPressed: () => Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => SetStateInjectionExample()),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              alignment: Alignment.center,
              height: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.orange,
                border: Border.all(),
              ),
              child: const Text('Animations', style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            const SizedBox(height: 10),
            Container(
              child: FlatButton(
                color: CupertinoColors.systemGrey5,
                child: const Text('Animated Container'),
                onPressed: () => Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => AnimatedContainerExample()),
                ),
              ),
            ),
            Container(
              child: FlatButton(
                color: CupertinoColors.systemGrey5,
                child: const Text('Tween Animation Builder'),
                onPressed: () => Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => TweenBuilderExample()),
                ),
              ),
            ),
            Container(
              child: FlatButton(
                color: CupertinoColors.systemGrey5,
                child: const Text('Explicit Animation'),
                onPressed: () => Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => ExplicitAnimationExample()),
                ),
              ),
            ),
            Container(
              child: FlatButton(
                color: CupertinoColors.systemGrey5,
                child: const Text('Animation Builder'),
                onPressed: () => Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => LoadingPage()),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

}