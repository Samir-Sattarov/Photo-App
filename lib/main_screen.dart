import 'package:flutter/material.dart';
import 'package:photo/screens/pages/inside_photo.dart';

import 'screens/pages/chat_page.dart';
import 'screens/pages/home_page.dart';
import 'screens/pages/profile_page.dart';
import 'screens/pages/search_page.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentTapIndex = 0;

  final tabs = <Widget>[
    const HomePageWidget(),
    const SearchPage(),
    const InsidePhotoPage(),
    const ChatsPage(),
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
        unselectedLabelStyle: const TextStyle(color: Colors.black),
        unselectedItemColor: Colors.black54,
        selectedItemColor: Colors.black87,
        selectedIconTheme: const IconThemeData(color: Colors.black),
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentTapIndex,
        items: [
          const BottomNavigationBarItem(
            label: ' ',
            icon: Icon(
              Icons.home_outlined,
            ),
          ),
          const BottomNavigationBarItem(
            label: ' ',
            icon: Icon(
              Icons.search_outlined,
            ),
          ),
          BottomNavigationBarItem(
            label: ' ',
            icon: Container(
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.center,
                  colors: [
                    Color(0xffFF00D6),
                    Color(0xffFF4D00),
                  ],
                ),
                borderRadius: BorderRadius.circular(30),
              ),
              width: 200,
              height: 50,
              child: const Icon(
                Icons.add,
                color: Colors.white,
              ),
            ),
          ),
          const BottomNavigationBarItem(
            label: ' ',
            icon: Icon(Icons.message_outlined),
          ),
          const BottomNavigationBarItem(
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
