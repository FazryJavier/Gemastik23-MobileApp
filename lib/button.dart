// import 'package:belajar/home.dart';
import 'package:flutter/material.dart';

class button extends StatefulWidget {
  const button({super.key});

  @override
  State<button> createState() => _buttonState();
}

class _buttonState extends State<button> {
  int _selectedIndex = 0;

  void _navigateButton(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
        // body: _pages[_selectedIndex],
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
                    ]))));
  }
}
