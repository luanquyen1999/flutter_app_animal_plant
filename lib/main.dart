import 'package:animal_planet_app_ui/screens/choose_plan_screen.dart';
import 'package:animal_planet_app_ui/screens/dashboard_screen.dart';
import 'package:animal_planet_app_ui/screens/landing_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
       primaryColor: Colors.blue,

      ),
      home: LandingScreen(),
    );
  }
}

