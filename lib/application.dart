import 'package:flutter/material.dart';
import 'package:photo/screens/home.dart';
import 'package:photo/screens/main.dart';
import 'package:photo/screens/welcome.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Photo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Roboto',
        primarySwatch: Colors.brown,
      ),
      home: const MainScreen(),
    );
  }
}
