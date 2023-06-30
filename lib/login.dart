import 'package:flutter/material.dart';
import 'package:belajar/static/colors.dart';
import 'package:lit_ui_kit/lit_ui_kit.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgcolor,
      body: SafeArea(
        child: ListView(children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.only(top: 10),
                ),
                Text(
                  "Selamat Datang",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                      color: Colors.white,
                      fontFamily: 'Regular'),
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
                      Text("Username"),
                      Padding(padding: EdgeInsets.only(top: 15, bottom: 5)),
                      Padding(
                        padding: EdgeInsets.all(1),
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Masukan Username",
                            labelText: "Username",
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ]),
      ),
    );
  }
}
