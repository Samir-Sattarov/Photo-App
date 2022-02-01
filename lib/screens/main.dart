import 'package:flutter/material.dart';
import 'package:photo/screens/home.dart';
import 'package:photo/screens/inside_photo.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'chats.dart';
import 'profile.dart';
import 'search.dart';

class MainScreen extends StatefulWidget {
  static route() => MaterialPageRoute(builder: (context) => const MainScreen());
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentTapIndex = 0;

  final tabs = <Widget>[
    const HomeScreen(),
    const SearchPage(),
    const InsidePhotoPage(),
    const ChatsPage(),
    const ProfilePage(),
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
          BottomNavigationBarItem(
            label: ' ',
            icon: SvgPicture.asset('assets/img/home.svg'),
          ),
          BottomNavigationBarItem(
            label: ' ',
            icon: SvgPicture.asset('assets/img/union.svg'),
          ),
          BottomNavigationBarItem(
            label: ' ',
            icon: Container(
              decoration: BoxDecoration(
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black,
                  ),
                ],
                border: Border.all(color: Colors.black),
                gradient: const LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    Color(0xffFF00D6),
                    Color(0xffFF4D00),
                  ],
                ),
                borderRadius: BorderRadius.circular(30),
              ),
              width: 70,
              height: 40,
              child: const Icon(
                Icons.add,
                color: Colors.white,
              ),
            ),
          ),
          BottomNavigationBarItem(
            label: ' ',
            icon: SvgPicture.asset('assets/img/chat.svg'),
          ),
          BottomNavigationBarItem(
            label: ' ',
            icon: SvgPicture.asset('assets/img/person.svg'),
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
