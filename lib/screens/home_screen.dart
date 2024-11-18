import 'package:flutter/material.dart';
import 'package:libraries_navigator/constants.dart';
import '../widgets/clickable_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Most Used Flutter Libraries)',
            style: kTitleStyle),
        ),
        backgroundColor: Colors.grey.shade200,
        body:  const Column(
          children: [
          Expanded(
            child: Row(
              children: [
                Expanded(child: ClickableCard('intl', '/intl')),
                Expanded(child: ClickableCard('material_dialog','/material_dialog')),
              ],
            ),
          ),
          Expanded(

            child: Row(
              children: [
                Expanded(child: ClickableCard('confetti','')),
                Expanded(child: ClickableCard('animated_flip_counter','')),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(child: ClickableCard('animated_textkit','/animated_text')),
                Expanded(child: ClickableCard('like_button','')),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(child: ClickableCard('','')),
                Expanded(child: ClickableCard('Flutter Toast Package','/toast_screen')),
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
