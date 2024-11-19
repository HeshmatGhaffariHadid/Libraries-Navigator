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
            'Flutter Libraries',
            style: kTitleStyle),
        ),
        backgroundColor: Colors.grey.shade200,
        body:  const Column(
          children: [
          Expanded(
            child: Row(
              children: [
                Expanded(child: ClickableCard('Intl', '/intl')),
                Expanded(child: ClickableCard('Material Dialog','/material_dialog')),
              ],
            ),
          ),
          Expanded(

            child: Row(
              children: [
                Expanded(child: ClickableCard('Reward Popup','/popup_reward')),
                Expanded(child: ClickableCard('Flip Counter','/animated_flip_counter')),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(child: ClickableCard('Animated Text','/animated_text')),
                Expanded(child: ClickableCard('Like Button','/like_button')),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(child: ClickableCard('Flutter Toast','/toast_screen')),
              ],
            ),
          ),
        ],
        ),
    );
  }
}
