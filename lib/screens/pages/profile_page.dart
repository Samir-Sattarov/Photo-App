import 'package:flutter/material.dart';
import 'package:getwidget/components/avatar/gf_avatar.dart';
import 'package:photo/widgets/classes.dart';
import 'package:photo/widgets/listData.dart';

import 'home_page.dart';

class ProfilePage extends StatelessWidget {
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
                    backgroundImage: NetworkImage(
                        'https://c4.wallpaperflare.com/wallpaper/445/729/175/golden-eagle-eagle-bird-fauna-wallpaper-preview.jpg'),
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
                      function: () {}),
                  const SizedBox(height: 16),
                  ButtonWidget(
                      weight: double.infinity,
                      height: 52,
                      backgound: Colors.white,
                      txtColor: Colors.black,
                      txt: 'message',
                      function: () {}),
                ],
              ),
            ),
            const SizedBox(height: 32),
            GridView(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 9,
                  mainAxisSpacing: 9,
                  mainAxisExtent: 150),
              children:
                  gridImages.map((img) => GridPhotoWidget(data: img)).toList(),
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
                function: () {}),
            const SizedBox(height: 32),
          ],
        ),
      ),
    ));
  }
}
