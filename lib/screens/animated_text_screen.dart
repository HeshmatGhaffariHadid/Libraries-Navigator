import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class AnimatedTextScreen extends StatefulWidget {
  const AnimatedTextScreen({super.key});

  @override
  State<AnimatedTextScreen> createState() => _AnimatedTextScreenState();
}

class _AnimatedTextScreenState extends State<AnimatedTextScreen> with SingleTickerProviderStateMixin {

late AnimationController controller;
late Animation animation;

@override
  void initState() {
    super.initState();
    controller = AnimationController(vsync: this,duration: const Duration(seconds: 3));
    controller.forward();
    controller.addListener(() { 
      setState(() {});
    });
    animation = ColorTween(
      end:  Colors.green,
      begin: Colors.yellow,
    ).animate(controller);
  }
  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: DefaultTextStyle(
          style: const TextStyle(
            color: Colors.white,
            fontSize: 26
          ),
          child: AnimatedTextKit(
            repeatForever: true,
            animatedTexts: [
            RotateAnimatedText('Animated Text Kit '),
          ],

          ),
        )
        // Text('Animated Text Package', style: kTitleStyle),
      ),
      backgroundColor: Colors.white.withOpacity(controller.value),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  // mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text(
                      'TypeWriter: ',
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.green,
                      ),
                    ),
                    const Text(
                      'Flutter is ',
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.green,
                      ),
                    ),
                    DefaultTextStyle(
                      style: const TextStyle(
                        fontSize: 24,
                        color: Colors.green,
                      ),
                      child: AnimatedTextKit(
                        repeatForever: true,
                        animatedTexts: [
                          TypewriterAnimatedText('Awesome'),
                          TypewriterAnimatedText('Amazing'),
                          TypewriterAnimatedText('The Best'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              // SizedBox(height: 40),
              Text('This is a custom Animation!',style: TextStyle(
                color: animation.value,
                fontSize: controller.value * 24,
              ),),
            ],
          ),
        ),
      ),
    );
  }
}
