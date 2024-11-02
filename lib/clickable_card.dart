import 'package:flutter/material.dart';
import 'package:libraries_navigator/details_screen.dart';

class ClickableCard extends StatelessWidget {
 int index;
 ClickableCard(this.index, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric( vertical: 4),
      child: GestureDetector(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsScreen(index),),);
        },
        child: Container(
          height: 100,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10)
          ),
          child:  Card(
            color: Colors.white,
            child: Center(
              child: Text(DetailsScreen.details[index].name ,style:TextStyle(
                  color: Colors.green,
                  fontSize: 24,
                  fontWeight: FontWeight.bold
              )),
            ),
          ),
        ),
      ),
    );
  }
}