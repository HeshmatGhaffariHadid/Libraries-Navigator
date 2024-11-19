import 'package:animated_flip_counter/animated_flip_counter.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../constants.dart';

class AnimatedFlip extends StatefulWidget {
  const AnimatedFlip({super.key});

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
              Container(
                height: 250,
                width: 150,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: AnimatedFlipCounter(
                  value: counter,
                  duration: const Duration(milliseconds: 400),
                  textStyle: const TextStyle(
                  color: Colors.white,
                  fontSize: 46,
                ),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 50,
                    width: 70,
                    decoration: BoxDecoration(
                      color: Colors.green.shade100,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: IconButton.outlined(
                        padding: const EdgeInsets.all(12),
                        hoverColor: Colors.yellow,
                      color: Colors.white,
                        onPressed: () {
                          setState(() {
                            counter++;
                          });
                        },
                        icon: const Icon(Icons.add, color: Colors.green, size: 24)),
                  ),
                  const SizedBox(width: 15),
                  Container(
                    height: 50,
                    width: 70,
                    decoration: BoxDecoration(
                      color: Colors.green.shade100,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: IconButton.outlined(
                      padding: const EdgeInsets.all(12),
                      hoverColor: Colors.yellow,
                      color: Colors.white,
                        onPressed: () {
                          setState(() {
                            counter--;
                          });
                        },
                        icon: const Icon(FontAwesomeIcons.minus,
                            size: 24, color: Colors.green)),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              Container(
                height: 50,
                width: 70,
                decoration: BoxDecoration(
                  color: Colors.green.shade100,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: TextButton(
                  child: const Text('ZERO',style: TextStyle(
                    color: Colors.green,
                    fontSize: 16,
                  ),),
                    onPressed: () {
                      setState(() {
                        counter = 0;
                      });
                    },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
