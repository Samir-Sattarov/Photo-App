import 'package:flutter/material.dart';
import 'package:photo/widgets/module/class.dart';
import 'package:photo/widgets/screens/welcome_screen.dart';

class FirstRegisterScreen extends StatelessWidget {
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
          SizedBox(height: 32),
          TextFieldWidget(
            hide: false,
            hintTxt: 'Email@gmail.com',
            keyboard: TextInputType.emailAddress,
          ),
          SizedBox(height: 16),
          TextFieldWidget(
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
              txt: 'Next',
              function: () {
                Navigator.pushNamed(context, '/registerSecond');
              }),
        ],
      ),
    ));
  }
}
