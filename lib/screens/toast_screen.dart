import 'package:flutter/material.dart';
import 'package:libraries_navigator/constants.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';
class ToastScreen extends StatelessWidget {
  const ToastScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Toast Package',style: kTitleStyle),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Container(
            height: 240,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.green.shade100,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.green.shade700,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: TextButton(
                    onPressed: () => showToastWidget(Container(
                      decoration:BoxDecoration(
                        gradient: LinearGradient(colors: [Colors.green.shade300, Colors.blue.shade200, Colors.yellow.shade200]),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child:  Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('This is a simple toast!',style: TextStyle(
                          color: Colors.grey.shade800,
                          fontSize: 18,
                        ),),
                      ),
                    ),
                      context: context,
                      duration: Duration(seconds: 2),
                      animation: StyledToastAnimation.scale,
                      curve: Curves.elasticOut,
                      reverseCurve: Curves.easeIn,
                    ) , child: const Text('Click me to display a simple toast',style: kTextStyle),),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
