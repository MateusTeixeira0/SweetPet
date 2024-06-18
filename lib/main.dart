import 'package:flutter/material.dart';
import 'package:sweetpet/screens/home_screen.dart';

void main() {
  runApp(SweetPetApp());
}

class SweetPetApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SweetPet',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(),
    );
  }
}
