import 'package:botique_placement/screens/splashScreen.dart';
import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Electronics App",
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
