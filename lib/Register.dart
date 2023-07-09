import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:lit_ui_kit/lit_ui_kit.dart';
import 'package:belajar/static/colors.dart';
import 'package:belajar/static/input_field.dart';
import 'package:belajar/MainMenu.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController namaController = TextEditingController(text: '');
  final TextEditingController userController = TextEditingController(text: '');
  final TextEditingController nohpController = TextEditingController(text: '');
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
                    "Registrasi Akun",
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
                                      Text('Nama Lengkap')
                                    ],
                                  )
                              ),
                              SizedBox(
                                height: 1,
                              ),
                              InputField(
                                hintText: 'Nama Lengkap',
                                suffixIcon: SizedBox(),
                                controller: namaController,
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
                        SizedBox(
                          height: 12,
                        ),
                        Padding(
                            padding: EdgeInsets.symmetric(horizontal: 5, vertical: 1),
                            child : Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(height:30),
                                Text('No.HP')
                              ],
                            )
                        ),
                        SizedBox(
                          height: 1,
                        ),
                        InputField(
                          hintText: 'No.HP',
                          suffixIcon: SizedBox(),
                          controller: nohpController,
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
                                      "Registrasi",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 23,
                                      ),
                                    )),
                              )),
                        ),
                        SizedBox(height: 25),
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
