// ignore_for_file: import_of_legacy_library_into_null_safe

import 'package:flutter/material.dart';
import 'package:flutter_grid_delegate_ext/rendering/grid_delegate.dart';
import 'package:getwidget/components/avatar/gf_avatar.dart';
import 'package:photo/widgets/classes.dart';
import 'package:photo/widgets/listData.dart';

import 'home.dart';

class ProfilePage extends StatelessWidget {
  static route() =>
      MaterialPageRoute(builder: (context) => const ProfilePage());
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        margin: const EdgeInsets.only(left: 16, right: 16, top: 50),
        width: double.infinity,
        child: Column(
          children: [
            Center(
              child: Column(
                children: [
                  const GFAvatar(
                    size: 70,
                    backgroundImage:
                        AssetImage('assets/img/profilepicture.png'),
                  ),
                  const SizedBox(height: 32),
                  const Text('Jane',
                      style:
                          TextStyle(fontSize: 36, fontWeight: FontWeight.w400)),
                  const SizedBox(height: 16),
                  const CategoryTitle(txt: 'San francisco, ca'),
                  const SizedBox(height: 32),
                  ButtonWidget(
                      weight: double.infinity,
                      height: 52,
                      backgound: Colors.black,
                      txtColor: Colors.white,
                      txt: 'follow Jane',
                      onPresed: () {}),
                  const SizedBox(height: 16),
                  ButtonWidget(
                      weight: double.infinity,
                      height: 52,
                      backgound: Colors.white,
                      txtColor: Colors.black,
                      txt: 'message',
                      onPresed: () {}),
                ],
              ),
            ),
            const SizedBox(height: 32),
            GridView(
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: XSliverGridDelegate(
                crossAxisSpacing: 9,
                crossAxisCount: 2,
                smallCellExtent: 220,
                bigCellExtent: 310,
                isFirstCellBig: false,
              ),
              children: gridImagesProfile
                  .map((img) => Padding(
                        padding: const EdgeInsets.only(bottom: 9.0),
                        child: GridPhotoWidget(data: img),
                      ))
                  .toList(),
              padding: const EdgeInsets.all(10),
              shrinkWrap: true,
            ),
            const SizedBox(height: 32),
            ButtonWidget(
                weight: double.infinity,
                height: 52,
                backgound: Colors.white,
                txtColor: Colors.black,
                txt: 'See more',
                onPresed: () {}),
            const SizedBox(height: 32),
          ],
        ),
      ),
    ));
  }
}
