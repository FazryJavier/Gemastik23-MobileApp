import 'package:belajar/static/colors.dart';
import 'package:flutter/material.dart';
import 'package:lit_ui_kit/lit_ui_kit.dart';
// import 'dart:ui';

class MainMenuPage extends StatefulWidget {
  const MainMenuPage({super.key});

  @override
  State<MainMenuPage> createState() => _MainMenuPageState();
}

class _MainMenuPageState extends State<MainMenuPage> {
  int _selectedIndex = 0;

  void _navigateButton(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: null,
        automaticallyImplyLeading: false,
        backgroundColor: bgcolor,
        title: Container(
          width: double.infinity,
          height: 40,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(25)
          ),
          child: Center(
            child: TextField(
              controller: _searchController,
              style: const TextStyle(color: Colors.black),
              cursorColor: Colors.black,
              decoration: const InputDecoration(
                contentPadding: EdgeInsets.fromLTRB(15, 5, 0 ,0),
                hintText: ' Search...',
                suffixIcon: Icon(Icons.search, color: Colors.black),
                border: InputBorder.none,
              ),
              onChanged: (value) {
                // Perform search functionality here
              },
            ),
          ),
        ),
      ),
        bottomNavigationBar: Container(
            decoration: BoxDecoration(
                border: Border.all(color: Colors.white, width: 6),
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(20),
                  topLeft: Radius.circular(20),
                ),
                boxShadow: [
                  BoxShadow(
                      color: Colors.amber,
                      blurRadius: 25.0,
                      offset: Offset(0, 25))
                ]),
            child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(0),
                  topRight: Radius.circular(0),
                ),
                child: BottomNavigationBar(
                    selectedItemColor: Colors.black,
                    unselectedItemColor: Colors.grey[400],
                    backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                    showSelectedLabels: false,
                    showUnselectedLabels: false,
                    elevation: 0,
                    currentIndex: _selectedIndex,
                    onTap: _navigateButton,
                    type: BottomNavigationBarType.fixed,
                    items: [
                      const BottomNavigationBarItem(
                          icon: Icon(Icons.home_outlined), label: 'Home'),
                      const BottomNavigationBarItem(
                        icon: Icon(Icons.person_2_rounded),
                        label: 'Home',
                      )
                    ]
                ),
            )
        ),
        body: SafeArea(
            child: ListView(
                children: [
                  Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            LitElevatedCard(
                                child: Column(
                                    children: [
                                      Form(
                                        child: Column(

                                        ),
                                      ),
                                    ]
                                )
                            )
                          ]
                      )
                  )
                ]
            )
        ),
    );
  }
}
