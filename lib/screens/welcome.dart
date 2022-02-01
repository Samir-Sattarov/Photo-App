import 'package:flutter/material.dart';
import 'package:photo/screens/login.dart';
import 'package:photo/widgets/classes.dart';

import 'main_register.dart';

class WelcomeScreen extends StatelessWidget {
  static route() =>
      MaterialPageRoute(builder: (context) => const WelcomeScreen());
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/img/welcome-background.jpg'),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
                  child: User(
                    avatarImg: 'assets/img/avatarwelcome.jpg',
                    name: 'Pawel Czerwinski',
                    id: '@pawel_czerwinski',
                  ),
                ),
                Container(
                  color: Colors.white,
                  height: 105,
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ButtonWidget(
                          weight: 167,
                          height: 52,
                          backgound: Colors.white,
                          txtColor: Colors.black,
                          txt: 'log in',
                          onPresed: () {
                            Navigator.of(context).push(LoginScreen.route());
                          }),
                      ButtonWidget(
                        weight: 167,
                        height: 52,
                        backgound: Colors.black,
                        txtColor: Colors.white,
                        txt: 'register',
                        onPresed: () {
                          Navigator.of(context)
                              .push(FirstRegisterScreen.route());
                        },
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          const Align(
            alignment: Alignment.center,
            child: Image(
              image: AssetImage('assets/img/logo.png'),
            ),
          ),
        ],
      ),
    );
  }
}
