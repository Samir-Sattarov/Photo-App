import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class GridImages {
  final String img;

  GridImages({
    required this.img,
  });
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
  final String profileurl;

  ChatModel(
      {required this.name, required this.message, required this.profileurl});
}
