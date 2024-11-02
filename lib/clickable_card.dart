import 'package:flutter/material.dart';
class ClickableCard extends StatelessWidget {
  const ClickableCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        print('hello world');
      },
      child: Container(
        height: 70,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
        ),
        child: Card(
          elevation: 5,
          color: Colors.green,
          child: Container(
            child: Center(
              child: Text('Library Name',style:TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold
              )),
            ),
          ),
        ),
      ),
    );
  }
}