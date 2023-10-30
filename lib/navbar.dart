import 'package:flutter/material.dart';
import 'package:mushroom/screens/CaptureImage.dart';

import 'package:mushroom/screens/aboutApp.dart';
import 'package:mushroom/screens/previousResult.dart';
import 'package:mushroom/screens/selectImage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'main.dart';

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp(); // Initialize Firebase
//   runApp(MyApp());
// }

class navBar extends StatefulWidget {
  const navBar({Key? key}) : super(key: key);

  @override
  State<navBar> createState() => _navBarState();
}

class _navBarState extends State<navBar> {
  int currentIndex = 0;
  final screens = [
    Center(
      child: CaptureImage(),
    ),
    Center(
      child: SelectImage(),
    ),
    Center(
      child: ImageScreen(),
    ),
    Center(
      child: aboutApp(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mushroom Classification App'),
        centerTitle: true,
        backgroundColor: Colors.purple[300],
      ),
      body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [ Color(0xff89E5E5),Colors.white24,Color(0xff89E5E5),Colors.white24,])),
          child: screens[currentIndex]),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.purple[300],
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white24,
        iconSize: 40,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        currentIndex: currentIndex,
        onTap: (index) => setState(
              () => currentIndex = index,
        ),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.camera),
            label: 'Home',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.image), label: 'Info'),
          BottomNavigationBarItem(icon: Icon(Icons.dataset), label: 'Previous'),
          BottomNavigationBarItem(icon: Icon(Icons.info), label: 'About'),
        ],
      ),
    );
  }
}