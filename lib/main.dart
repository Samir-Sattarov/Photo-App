import 'package:flutter/material.dart';
import 'package:photo/widgets/screens/pages/chat_page.dart';
import 'package:photo/widgets/screens/pages/inside_chat.dart';
import 'package:photo/widgets/screens/pages/profile_page.dart';
import 'package:photo/widgets/screens/pages/search_page.dart';
import 'widgets/screens/login_screen.dart';
import 'widgets/screens/main_register_screen.dart';
import 'widgets/screens/pages/home_page.dart';
import 'widgets/screens/second_register_screen.dart';
import 'widgets/screens/welcome_screen.dart';

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
        primarySwatch: Colors.brown,
      ),
      initialRoute: '/login',
      routes: {
        '/welcome': (context) => WelcomeScreen(),
        '/registerFirst': (ctx) => FirstRegisterScreen(),
        '/registerSecond': (context) => SecondRegisterScreen(),
        '/login': (context) => LoginScreen(),
        '/home': (context) => HomePageWidget(),
        '/search': (context) => SearchPage(),
        '/chat': (context) => ChatsPage(),
        '/chatview': (context) => ChatViewPage(),
        '/profile': (context) => ProfilePage(),
      },
    );
  }
}
