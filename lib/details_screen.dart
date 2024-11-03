import 'package:flutter/material.dart';
import 'library.dart';

class DetailsScreen extends StatelessWidget {
  int index;
  DetailsScreen(this.index);

  static List<Library> details = [
    Library('Provider', 'State management', 'Manages and shares application state across widgets. It’s simple to set up, making it great for smaller projects or as a foundation for larger apps. Provider helps with dependency injection and ensures efficient rebuilding of widgets.', 'provider'),
    Library('Flutter Bloc', 'State management', ': Implements the Business Logic Component (BLoC) pattern, which is ideal for structuring complex apps by separating business logic from the UI. It’s frequently used in enterprise-level apps to ensure predictable and testable code.', 'flutter_bloc'),
    Library('GetX', 'State management, navigation, dependency injection', 'Provides an all-in-one solution for state management, routing, and dependency injection. GetX is known for its minimal boilerplate, making it fast to set up and easy to use for dynamic state changes and quick navigation between screens.', 'get'),
    Library('Dio', 'Networking', 'A robust HTTP client for handling API requests, it supports features like interceptors, global configuration, FormData, error handling, and file uploads. Dio is ideal for RESTful APIs and complex networking operations.', 'dio'),
    Library('Hive', ': Local storage', 'A lightweight, NoSQL database that’s optimized for Flutter and Dart. Hive is perfect for storing small amounts of data offline and is often used for caching, storing user preferences, or saving app data without requiring SQL knowledge.', 'hive'),
    Library('Firebase', 'Backend services (Authentication, Firestore, Analytics, etc.)', 'Firebase provides a suite of backend services such as Firestore (real-time database), authentication, analytics, cloud messaging, and storage. It’s commonly used for apps requiring robust user authentication, real-time data syncing, or cloud storage.', 'firebase_core (and other Firebase packages like firebase_auth, cloud_firestore)'),
    Library('Flutter Localization', 'Internationalization (i18n)', ': Supports localization and multiple languages in apps, allowing developers to easily implement and manage text translations and regional formatting. Essential for apps targeting an international audience.', 'flutter_localizations')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 10),
        child: ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  details[index].name,
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Purpose: ${details[index].purpose}',
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 18,
                  ),
                ),
                Text(
                  'Usages: ${details[index].usages}',
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 18,
                  ),
                ),
                Text(
                  'Package: ${details[index].package}',
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 18,
                  ),
                ),

                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    height: 40,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [Color(0xFF66BB6A), Color(0xFF388E3C)]),
                      borderRadius: BorderRadius.circular(50)
                    ),
                    child: Center(
                      child: Text(
                        'Back',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
