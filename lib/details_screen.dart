import 'package:flutter/material.dart';
import 'library.dart';

class DetailsScreen extends StatelessWidget {
  // final String title = '';
  // final String purpose = '';
  // final String details = '';
  // final String usages = '' ;

  int index;

  DetailsScreen(this.index);


  static List<Library> details = [
    Library('Provider', 'A paragraph', 'purpose1', 'list of usages'),
    Library('Flutter Bloc', 'A paragraph', 'purpose2', 'list of usages'),
    Library('GetX', 'A paragraph', 'purpose3', 'list of usages'),
    Library('Dio', 'A paragraph', 'purpose4', 'list of usages'),
    Library('Hive', 'A paragraph', 'purpose5', 'list of usages'),
    Library('Firebase', 'A paragraph', 'purpose6', 'list of usages'),
    Library('Flutter Localization', 'A paragraph', 'purpose7', 'list of usages'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Details'),
      //   backgroundColor: Colors.green,
      // ),
      body: ListView(
        children: [
          Text(details[index].name, style: TextStyle(
            color: Colors.green,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),),
          Text('Purpose: '),
          TextButton(onPressed: (){
            Navigator.pop(context);
          }, child: Text('Back'),),
        ],
      ),
    );
  }
}
