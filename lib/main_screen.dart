import 'package:flutter/material.dart';

import 'screens/login_screen.dart';
import 'screens/main_register_screen.dart';
import 'screens/pages/chat_page.dart';
import 'screens/pages/home_page.dart';
import 'screens/pages/inside_chat.dart';
import 'screens/pages/profile_page.dart';
import 'screens/pages/search_page.dart';
import 'screens/second_register_screen.dart';
import 'screens/welcome_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentTapIndex = 0;

  final tabs = <Widget>[
    HomePageWidget(),
    SearchPage(),
    ChatViewPage(),
    ChatsPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[_currentTapIndex],
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        enableFeedback: true,
        unselectedLabelStyle: TextStyle(color: Colors.black),
        unselectedItemColor: Colors.black54,
        selectedItemColor: Colors.black87,
        selectedIconTheme: IconThemeData(color: Colors.black),
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentTapIndex,
        items: [
          BottomNavigationBarItem(
            label: ' ',
            icon: Icon(
              Icons.home_outlined,
            ),
          ),
          BottomNavigationBarItem(
            label: ' ',
            icon: Icon(
              Icons.search_outlined,
            ),
          ),
          BottomNavigationBarItem(
            label: ' ',
            icon: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xffFF00D6),
                    Color(0xffFF4D00),
                  ],
                ),
                borderRadius: BorderRadius.circular(30),
              ),
              width: 200,
              height: 50,
              child: Icon(
                Icons.add,
                color: Colors.white,
              ),
            ),
          ),
          BottomNavigationBarItem(
            label: ' ',
            icon: Icon(
              Icons.chat_outlined,
            ),
          ),
          BottomNavigationBarItem(
            label: ' ',
            icon: Icon(
              Icons.person_outline,
            ),
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentTapIndex = index;
          });
        },
      ),
    );
  }
}
