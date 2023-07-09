// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:lit_ui_kit/lit_ui_kit.dart';
import 'package:belajar/Register.dart';
import 'package:belajar/MainMenu.dart';
import 'package:belajar/static/colors.dart';
import 'package:belajar/static/input_field.dart';
// import 'package:flutter_icons/flutter_icons.dart';
// import 'Controllers/authcontroller.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController userController = TextEditingController(text: '');
  final TextEditingController passwordController = TextEditingController(text: '');

  bool passwordVisible = false;
  void togglePassword() {
    setState(() {
      passwordVisible = !passwordVisible;
    });
  }

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
                    width: 150,
                    height: 150,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          width: 150,
                          height: 150,
                          './assets/Logo.png',
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Selamat Datang!",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Colors.white,
                        fontFamily: 'quicksand'),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  LitElevatedCard(
                    child: Column(
                      children: [
                        // username container
                        Form(
                          child: Column(
                            children: [
                              Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 5, vertical: 1),
                                  child : Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      SizedBox(height:30),
                                      Text('Username')
                                    ],
                                  )
                              ),
                              SizedBox(
                                height: 1,
                              ),
                              InputField(
                                hintText: 'Username',
                                suffixIcon: SizedBox(),
                                controller: userController,
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 5, vertical: 1),
                                  child : Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      SizedBox(height:30),
                                      Text('Password')
                                    ],
                                  )
                              ),
                              InputField(
                                hintText: 'Password',
                                controller: passwordController,
                                obscureText: !passwordVisible,
                                suffixIcon: IconButton(
                                  color: Colors.grey,
                                  splashRadius: 1,
                                  icon: Icon(passwordVisible
                                      ? Icons.visibility_outlined
                                      : Icons.visibility_off_outlined),
                                  onPressed: togglePassword,
                                ),
                              ),
                             ],
                           ),
                         ),
                        Padding(//forgot password
                          padding: const EdgeInsets.symmetric(horizontal: 5.0),
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
                                    'Lupa Password?',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      SizedBox( height: 15,
                        ),
                      //button sign in
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MainMenuPage()));
                        },
                        child: Container(
                          width: 180,
                            decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(35)),
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Center(
                                child: Text(
                              "Login",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 23,
                              ),
                            )),
                          )),
                        ),
                        SizedBox(height: 15),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Form(
                              child:
                                  Column(
                                    children : [
                                        Text("Belum Memiliki Akun?",
                                            style: TextStyle(fontSize: 17, color: Colors.black)
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) => RegisterPage()));
                                          },
                                          child: Text(
                                            "Daftar Akun",
                                            style: TextStyle(fontSize: 17, color: Colors.greenAccent),
                                          ),
                                        ),
                                    ],
                                  ),
                            ),
                          ],
                        ),
                      SizedBox(
                        height: 15,
                      ),
                      //atau
                      Row(
                        children: [
                          Expanded(
                              child: Container(
                                  margin: EdgeInsets.only(right: 10.0),
                                  child: Divider(
                                    color: Colors.black,
                                    thickness: 2,
                                  ))),
                          Text(
                            "Atau",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.black),
                          ),
                          Expanded(
                              child: Container(
                                  margin: EdgeInsets.only(left: 10.0),
                                  child: Divider(
                                    color: Colors.black,
                                    thickness: 2,
                                  ))),
                        ],
                      ),
                      SizedBox(
                        height: 20,
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
                          // GestureDetector(
                          //   //Facebook
                          //   onTap: () {},
                          //   child: Container(
                          //       decoration: BoxDecoration(
                          //           color: textColor,
                          //           borderRadius: BorderRadius.circular(12)),
                          //       child: Padding(
                          //         padding: const EdgeInsets.all(10),
                          //         child: Center(
                          //             child: Icon(
                          //           Icons.facebook,
                          //           color: Colors.blue,
                          //           size: 35,
                          //         )),
                          //       )),
                          // ),
                          // GestureDetector(
                          //   //twitter
                          //   onTap: () {},
                          //   child: Container(
                          //       decoration: BoxDecoration(
                          //           color: textColor,
                          //           borderRadius: BorderRadius.circular(12)),
                          //       child: Padding(
                          //         padding: const EdgeInsets.all(10),
                          //         child: Center(
                          //             child: Icon(
                          //           Icons.autofps_select_rounded,
                          //           size: 35,
                          //         )),
                          //       )),
                          // ),
                        ],
                      ),
                        SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
