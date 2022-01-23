import 'package:flutter/material.dart';
import 'main_screen.dart';
// -- Screens --//
import 'screens/login_screen.dart';
import 'screens/main_register_screen.dart';
import 'screens/pages/chat_page.dart';
import 'screens/pages/home_page.dart';
import 'screens/pages/inside_chat.dart';
import 'screens/pages/inside_photo.dart';
import 'screens/pages/profile_page.dart';
import 'screens/pages/search_page.dart';
import 'screens/second_register_screen.dart';
import 'screens/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Roboto',
        primarySwatch: Colors.brown,
      ),
      initialRoute: '/main',
      routes: {
        '/main': (ctx) => const MainScreen(),
        '/welcome': (ctx) => WelcomeScreen(),
        '/registerFirst': (ctx) => FirstRegisterScreen(),
        '/registerSecond': (ctx) => const SecondRegisterScreen(),
        '/login': (ctx) => LoginScreen(),
        '/photoview': (ctx) => const InsidePhotoPage(),
        '/search': (ctx) => const SearchPage(),
        '/chat': (ctx) => const ChatsPage(),
        '/chatview': (ctx) => ChatViewPage(),
        '/profile': (ctx) => ProfilePage(),
      },
    );
  }
}
