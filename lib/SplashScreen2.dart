import 'dart:async';

// import 'package:belajar/button.dart';
import 'package:belajar/loginwb.dart';
import 'package:flutter/material.dart';
// import 'package:belajar/static/colors.dart';
// import 'package:belajar/home.dart';

class SplashScreen extends StatefulWidget {
  // const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => LoginPage()));
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.all(5),
          width: 225,
          height: 217,
          decoration: const BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                width: 210,
                height: 202,
                './assets/Logo.png',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
