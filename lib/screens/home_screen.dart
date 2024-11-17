import 'package:flutter/material.dart';
import '../widgets/clickable_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Most Used Flutter Libraries)',
            style: TextStyle(
                fontSize: 22, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.green,
        ),
        backgroundColor: Colors.grey.shade200,
        body:  const Column(
          children: [
          Expanded(
            child: Row(
              children: [
                Expanded(child: ClickableCard('intl')),
                Expanded(child: ClickableCard('material_dialog')),
              ],
            ),
          ),
          Expanded(

            child: Row(
              children: [
                Expanded(child: ClickableCard('confetti')),
                Expanded(child: ClickableCard('animated_flip_counter')),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(child: ClickableCard('animated_textkit')),
                Expanded(child: ClickableCard('like_button')),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(child: ClickableCard('Flutter Toast Package')),
                Expanded(child: ClickableCard('Flutter Toast Package')),
              ],
            ),
          ),
        ],
        ),

        // ListView.builder(
        //   itemCount: 7,
        //     itemBuilder: (context ,index){
        //     return ClickableCard(index);
        //   },
        // ),
    );
  }
}
