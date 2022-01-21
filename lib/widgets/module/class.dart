import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:getwidget/getwidget.dart';

class User extends StatelessWidget {
  final String avatarImg;
  final String name;
  final String id;

  const User({
    Key? key,
    required this.name,
    required this.id,
    required this.avatarImg,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GFAvatar(
          radius: 18,
          backgroundImage: NetworkImage("$avatarImg"),
        ),
        const SizedBox(width: 8),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '$name',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(id),
          ],
        ),
      ],
    );
  }
}

class ButtonWidget extends StatelessWidget {
  final double weight;
  final double height;
  final Color backgound;
  final Color txtColor;

  final String txt;

  final function;
  const ButtonWidget({
    Key? key,
    required this.weight,
    required this.height,
    required this.backgound,
    required this.txtColor,
    required this.txt,
    required this.function,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: function,
      child: Text(
        '$txt'.toUpperCase(),
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
      ),
      style: ElevatedButton.styleFrom(
        onPrimary: txtColor,
        primary: backgound, //background color of button
        side:
            BorderSide(width: 3, color: Colors.black), //border width and color
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        minimumSize: Size(weight, height),
      ),
    );
  }
}

class ScreenTitle extends StatelessWidget {
  final String txt;
  const ScreenTitle({Key? key, required this.txt}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      '$txt',
      style: TextStyle(fontSize: 36, fontWeight: FontWeight.w400),
    );
  }
}

class CategoryTitle extends StatelessWidget {
  final String txt;
  const CategoryTitle({Key? key, required this.txt}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      '$txt'.toUpperCase(),
      style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
    );
  }
}

class TextFieldWidget extends StatelessWidget {
  final TextEditingController? controller;
  final TextInputType keyboard;
  final bool hide;
  final String hintTxt;
  const TextFieldWidget(
      {Key? key,
      required this.hintTxt,
      required this.hide,
      required this.keyboard,
      this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      keyboardType: keyboard,
      obscureText: hide,
      obscuringCharacter: "*",
      cursorColor: Colors.black,
      decoration: InputDecoration(
        hintText: '$hintTxt',
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.black, width: 3.0),
          borderRadius: BorderRadius.circular(0),
        ),
        enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.black, width: 3.0),
            borderRadius: BorderRadius.circular(0)),
      ),
    );
  }
}

class GridImages {
  final String img;

  GridImages(this.img);
}

class MainPhotoData {
  final String img;
  final String name;
  final String id;
  final String avatarImage;
  const MainPhotoData(
      {Key? key,
      required this.img,
      required this.name,
      required this.id,
      required this.avatarImage});
}

class ChatModel {
  final String name;
  final String message;
  final String time;
  final String profileurl;

  ChatModel(
      {required this.name,
      required this.message,
      required this.time,
      required this.profileurl});
}