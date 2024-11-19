import 'package:flutter/material.dart';
import 'package:libraries_navigator/screens/animated_flip_counter.dart';
import 'package:libraries_navigator/screens/animated_text_screen.dart';
import 'package:libraries_navigator/screens/intl_screen.dart';
import 'package:libraries_navigator/screens/like_button.dart';
import 'package:libraries_navigator/screens/material_dialog.dart';
import 'package:libraries_navigator/screens/toast_screen.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/intl': (context) => IntlScreen(),
        '/material_dialog': (context) => MaterialDialog(),
        '/toast_screen' : (context) => ToastScreen(),
        '/animated_text' : (context) => AnimatedTextScreen(),
        '/animated_flip_counter' : (context) => AnimatedFlip(),
        '/like_button' : (context) => LikeButton(),
      },
      theme: ThemeData.light().copyWith(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.green,
          brightness: Brightness.light,
        ),
      ),
    );
  }
}
