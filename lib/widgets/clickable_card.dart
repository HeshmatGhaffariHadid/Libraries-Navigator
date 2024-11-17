import 'package:flutter/material.dart';
import 'package:libraries_navigator/constants.dart';

class ClickableCard extends StatelessWidget {
  final String name;
  final String rout;
  const ClickableCard(this.name,this.rout, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 4),
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, rout);
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            gradient: const LinearGradient(
                colors: [Color(0xFF66BB6A), Color(0xFF388E3C)]),
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Text(
                name,
                textAlign: TextAlign.center,
                style: kTitleStyle,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
