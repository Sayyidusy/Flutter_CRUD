// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, avoid_print, unused_field

import 'package:crud_motion/firebase_options.dart';
import 'package:crud_motion/pages/home_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

 void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _initialization,
      builder: (context, snapshot) {
        // CHeck for Errors
        if (snapshot.hasError) {
          print("Ada yang Bermasalah");
        }
        // once Completed, show your application
        if (snapshot.connectionState == ConnectionState.done) {
          return MaterialApp(
            title: 'Tubes CRUD',
            theme: ThemeData(
              primarySwatch: Colors.purple,
            ),
            debugShowCheckedModeBanner: false,
            home: HomePage(),
          );
        }
        return CircularProgressIndicator();
      },
    );
  }
}
