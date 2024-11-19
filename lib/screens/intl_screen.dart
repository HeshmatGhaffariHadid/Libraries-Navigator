import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:libraries_navigator/constants.dart';

class IntlScreen extends StatelessWidget {
  const IntlScreen({super.key});

  @override
  Widget build(BuildContext context) {

    DateTime now = DateTime.now();

    var dateFormat = DateFormat('yyyy-MM-dd').format(now);
    var timeFormat = DateFormat('kk:mm a').format(now);
    var fullFormat = DateFormat('yyyy-MM-dd , HH:mm:ss').format(now);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Intl Package', style: kTitleStyle),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 120,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.green.shade100,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        FontAwesomeIcons.calendar,
                        color: Colors.green,
                        size: 28,
                      ),
                      const SizedBox(width: 5),
                      Text('Date: $dateFormat',
                          style: const TextStyle(
                              color: Colors.green,
                              fontSize: 24,
                              )),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  height: 120,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.green.shade100,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(FontAwesomeIcons.clock,color: Colors.green, size: 28),
                      const SizedBox(width: 5),
                      Text('Time: $timeFormat',
                          style: const TextStyle(
                              color: Colors.green,
                              fontSize: 24,
                           )),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  height: 120,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.green.shade100,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Center(
                    child: Text('Full Format: $fullFormat',textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: Colors.green,
                          fontSize: 24,
                        )),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
