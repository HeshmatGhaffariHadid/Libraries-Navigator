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
          'Most Used Flutter Libraries',
          style: TextStyle(
              fontSize: 22,
              color: Colors.white,
              fontWeight: FontWeight.bold
          ),
        ),
        backgroundColor: Colors.green,
      ),
      backgroundColor: Colors.grey.shade200,
      body: ListView.builder(
        itemCount: 7,
          itemBuilder: (context ,index){
          return ClickableCard(index);
        },
      ),
    );
  }
}

