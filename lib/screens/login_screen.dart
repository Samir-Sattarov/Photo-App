import 'package:flutter/material.dart';
import 'package:photo/widgets/classes.dart';
import 'package:photo/widgets/data.dart';

import 'main_register_screen.dart';
import 'welcome_screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _loginTextController = TextEditingController();

  final _passwordTextController = TextEditingController();

  void _login() {
    final login = _loginTextController.text;
    final password = _passwordTextController.text;
    if (login == 'admin' && password == 'admin') {
      print('OpenApp');
      Navigator.pushNamed(context, '/home');
    } else if (login == 'Admin' && password == 'Admin') {
    } else {
      print('Error');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      margin: EdgeInsets.only(left: 16, right: 16, top: 80),
      width: 343,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ScreenTitle(txt: 'Log in'),
          SizedBox(height: 32),
          TextFieldWidget(
            controller: _loginTextController,
            hide: false,
            hintTxt: 'Email@gmail.com',
            keyboard: TextInputType.emailAddress,
          ),
          SizedBox(height: 16),
          TextFieldWidget(
            controller: _passwordTextController,
            hide: true,
            hintTxt: 'Password',
            keyboard: TextInputType.emailAddress,
          ),
          SizedBox(height: 16),
          ButtonWidget(
              weight: double.infinity,
              height: 52,
              backgound: Colors.black,
              txtColor: Colors.white,
              txt: 'Log in',
              function: () {
                Navigator.pushNamed(context, '/home');
              }),
        ],
      ),
    ));
  }
}
