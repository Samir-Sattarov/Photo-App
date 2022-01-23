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
        margin: EdgeInsets.only(left: 16, right: 16, top: 50),
        width: double.infinity,
        child: Column(
          children: [
            Center(
              child: Column(
                children: [
                  GFAvatar(
                    size: 70,
                    backgroundImage: NetworkImage(
                        'https://c4.wallpaperflare.com/wallpaper/445/729/175/golden-eagle-eagle-bird-fauna-wallpaper-preview.jpg'),
                  ),
                  SizedBox(height: 32),
                  Text('Jane',
                      style:
                          TextStyle(fontSize: 36, fontWeight: FontWeight.w400)),
                  SizedBox(height: 16),
                  CategoryTitle(txt: 'San francisco, ca'),
                  SizedBox(height: 32),
                  ButtonWidget(
                      weight: double.infinity,
                      height: 52,
                      backgound: Colors.black,
                      txtColor: Colors.white,
                      txt: 'follow Jane',
                      function: () {}),
                  SizedBox(height: 16),
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
            SizedBox(height: 32),
            GridView(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 9,
                  mainAxisSpacing: 9,
                  mainAxisExtent: 150),
              children:
                  gridImages.map((img) => GridPhotoWidget(data: img)).toList(),
              padding: EdgeInsets.all(10),
              shrinkWrap: true,
            ),
            SizedBox(height: 32),
            ButtonWidget(
                weight: double.infinity,
                height: 52,
                backgound: Colors.white,
                txtColor: Colors.black,
                txt: 'See more',
                function: () {}),
            SizedBox(height: 32),
          ],
        ),
      ),
    ));
  }
}
