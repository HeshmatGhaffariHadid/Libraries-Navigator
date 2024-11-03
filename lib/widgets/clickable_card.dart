import 'package:flutter/material.dart';
import 'package:libraries_navigator/constants.dart';
import 'package:libraries_navigator/screens/details_screen.dart';

class ClickableCard extends StatelessWidget {
  final int index;
  const ClickableCard(this.index, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 2),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DetailsScreen(index),
            ),
          );
        },
        child: Container(
          height: 90,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            gradient: const LinearGradient(
                colors: [Color(0xFF66BB6A), Color(0xFF388E3C)]),
          ),
          child: Center(
            child: Text(DetailsScreen.details[index].name,
                style: kTitleStyle,
            ),
          ),
        ),
      ),
    );
  }
}
