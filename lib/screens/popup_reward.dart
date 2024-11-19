import 'package:flutter/material.dart';
import 'package:libraries_navigator/constants.dart';
import 'package:reward_popup/reward_popup.dart';

class PopupReward extends StatelessWidget {
  const PopupReward({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Popup Reward'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Container(
            height: 400,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.green.shade100,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.green),
                ),
                onPressed: () => showRewardPopup(
                  context,
                  child: Image.asset('images/mersadJan.jpg'),
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 18,horizontal: 18),
                  child: Text('Click me to be given a reward!', style: kTextStyle),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
