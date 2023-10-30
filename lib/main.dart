// (// @dart=2.9)

import 'package:flutter/material.dart';
import 'package:mushroom/loadingScreen.dart';
import 'package:firebase_core/firebase_core.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(); // Initialize Firebase
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mushroom Classification',
      debugShowCheckedModeBanner: false,

      home: LoadingScreen(),
    );
  }
}
// password=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