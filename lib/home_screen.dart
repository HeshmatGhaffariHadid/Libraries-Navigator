import 'package:flutter/material.dart';

import 'clickable_card.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Flutter Libraries',
          style: TextStyle(
              fontSize: 22,
              color: Colors.white,
              fontWeight: FontWeight.bold
          ),
        ),
        backgroundColor: Colors.grey,
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          ClickableCard(),
        ],
      ),
    );
  }
}

