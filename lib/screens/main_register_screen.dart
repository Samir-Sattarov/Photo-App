import 'package:flutter/material.dart';
import 'package:photo/widgets/classes.dart';

class FirstRegisterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      margin: const EdgeInsets.only(left: 16, right: 16, top: 80),
      width: 343,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const ScreenTitle(txt: 'Register'),
          const SizedBox(height: 32),
          const TextFieldWidget(
            hide: false,
            hintTxt: 'Email@gmail.com',
            keyboard: TextInputType.emailAddress,
          ),
          const SizedBox(height: 16),
          const TextFieldWidget(
            hide: true,
            hintTxt: 'Password',
            keyboard: TextInputType.emailAddress,
          ),
          const SizedBox(height: 16),
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
