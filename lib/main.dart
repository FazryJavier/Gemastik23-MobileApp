// import 'package:belajar/home.dart';
// import 'package:belajar/button.dart';
import 'package:belajar/static/colors.dart';
import 'package:flutter/material.dart';
import 'package:belajar/SplashScreen2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        canvasColor: bgcolor,
      ),
      home: SplashScreen(),
    );
  }
}
