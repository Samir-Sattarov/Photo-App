import 'package:flutter/material.dart';
import 'package:photo/widgets/module/class.dart';
import 'package:photo/widgets/screens/welcome_screen.dart';

import 'main_register_screen.dart';

class SecondRegisterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      margin: EdgeInsets.only(left: 16, right: 16, top: 80),
      width: 343,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const ScreenTitle(txt: 'Register'),
          const SizedBox(height: 32),
          const TextFieldWidget(
            hide: false,
            hintTxt: 'Nickname',
            keyboard: TextInputType.emailAddress,
          ),
          const SizedBox(height: 16),
          ButtonWidget(
              weight: double.infinity,
              height: 52,
              backgound: Colors.black,
              txtColor: Colors.white,
              txt: 'Next',
              function: () {}),
        ],
      ),
    ));
  }
}
