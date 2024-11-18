import 'package:animated_flip_counter/animated_flip_counter.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../constants.dart';

class AnimatedFlip extends StatefulWidget {
  @override
  State<AnimatedFlip> createState() => _AnimatedFlipState();
}

class _AnimatedFlipState extends State<AnimatedFlip> {
  late int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flip Counter', style: kTitleStyle),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedFlipCounter(
                value: counter,
                duration: const Duration(seconds: 1),
                textStyle: TextStyle(
                color: Colors.green,
                fontSize: 26,
              ),
              ),
              Row(
                children: [
                  IconButton.outlined(
                    color: Colors.green,
                      onPressed: () {
                        setState(() {
                          counter++;
                        });
                      },
                      icon: Icon(Icons.add, color: Colors.green, size: 24)),
                  SizedBox(width: 15),
                  IconButton.outlined(
                    color: Colors.green,
                      onPressed: () {
                        setState(() {
                          counter--;
                        });
                      },
                      icon: Icon(FontAwesomeIcons.minus,
                          size: 24, color: Colors.green))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
