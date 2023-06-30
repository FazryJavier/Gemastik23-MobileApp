// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:lit_ui_kit/lit_ui_kit.dart';
import 'package:belajar/Register.dart';
import 'package:belajar/static/colors.dart';
// import 'package:flutter_icons/flutter_icons.dart';
// import 'Controllers/authcontroller.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    // AuthController authController = AuthController();
    return Scaffold(
      backgroundColor: bgcolor,
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 10),
                  ),
                  Text(
                    "Let's get you set up!",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 35,
                        color: Colors.white,
                        fontFamily: 'quicksand'),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 40,
                  ),

                  LitElevatedCard(
                    child: Column(
                      children: [
                        // email container
                        Text("Sign in"),
                        Padding(padding: EdgeInsets.only(top: 15, bottom: 5)),
                        Padding(
                          padding: EdgeInsets.all(1),
                          child: TextField(
                            // controller: authController.loginEmailController,
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Enter Your Email Here",
                                labelText: "Email",
                                labelStyle: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                                icon: Icon(Icons.account_circle_rounded,
                                    color: bgcolor),
                                focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: bgcolor)),
                                enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: bgcolor))),
                          ),
                        ),
                        SizedBox(height: 10),
                        // password container
                        Padding(
                          padding: EdgeInsets.only(left: 5, right: 5),
                          child: TextField(
                            obscureText: true,
                            // controller: authController.loginPasswordController,
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Password",
                                labelText: "Password",
                                labelStyle: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                                icon: Icon(
                                  Icons.key,
                                  color: bgcolor,
                                ),
                                focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: bgcolor)),
                                enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: bgcolor))),
                          ),
                        ),
                        //forgot password
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 25.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 15, bottom: 10),
                                child: GestureDetector(
                                  onTap: (() {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                RegisterPage()));
                                  }),
                                  child: Text(
                                    'Forgot Password?',
                                    style: TextStyle(
                                      color: bgcolor,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(
                    height: 15,
                  ),
                  //button sign in
                  GestureDetector(
                    onTap: () {
                      // authController.loginUser();
                    },
                    child: Container(
                        decoration: BoxDecoration(
                            color: Color(0xff457B9D),
                            borderRadius: BorderRadius.circular(22)),
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Center(
                              child: Text(
                            "Sign in",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          )),
                        )),
                  ),
                  SizedBox(
                    height: 30,
                  ),

                  //or
                  Row(
                    children: [
                      Expanded(
                          child: Container(
                              margin: EdgeInsets.only(right: 10.0),
                              child: Divider(
                                color: textColor,
                                thickness: 2,
                              ))),
                      Text(
                        "or",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: textColor),
                      ),
                      Expanded(
                          child: Container(
                              margin: EdgeInsets.only(left: 10.0),
                              child: Divider(
                                color: textColor,
                                thickness: 2,
                              ))),
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        //google
                        onTap: () {},
                        child: Container(
                            decoration: BoxDecoration(
                                color: textColor,
                                borderRadius: BorderRadius.circular(12)),
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Center(
                                  child: Icon(Icons.g_mobiledata, size: 35)),
                            )),
                      ),
                      GestureDetector(
                        //Facebook
                        onTap: () {},
                        child: Container(
                            decoration: BoxDecoration(
                                color: textColor,
                                borderRadius: BorderRadius.circular(12)),
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Center(
                                  child: Icon(
                                Icons.facebook,
                                color: Colors.blue,
                                size: 35,
                              )),
                            )),
                      ),
                      GestureDetector(
                        //twitter
                        onTap: () {},
                        child: Container(
                            decoration: BoxDecoration(
                                color: textColor,
                                borderRadius: BorderRadius.circular(12)),
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Center(
                                  child: Icon(
                                Icons.autofps_select_rounded,
                                size: 35,
                              )),
                            )),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 50,
                  ),

                  // SizedBox(
                  //   height: 80,
                  // ),

                  // SizedBox(
                  //   height: 30,
                  // ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("I don't have an account yet?",
                          style: TextStyle(fontSize: 17, color: textColor)),
                      SizedBox(
                        width: 5,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => RegisterPage()));
                        },
                        child: Text(
                          "Sign up",
                          style: TextStyle(fontSize: 17, color: linkColor),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
