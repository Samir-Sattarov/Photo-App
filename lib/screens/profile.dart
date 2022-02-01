// ignore_for_file: import_of_legacy_library_into_null_safe

import 'package:flutter/material.dart';
import 'package:flutter_grid_delegate_ext/rendering/grid_delegate.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
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
            SingleChildScrollView(
              child: StaggeredGrid.count(
                crossAxisCount: 4,
                mainAxisSpacing: 4,
                crossAxisSpacing: 4,
                children: const [
                  StaggeredGridTile.count(
                    crossAxisCellCount: 2,
                    mainAxisCellCount: 2.5,
                    child: Image(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/img/profilepictureone.png'),
                    ),
                  ),
                  StaggeredGridTile.count(
                    crossAxisCellCount: 2,
                    mainAxisCellCount: 3.5,
                    child: Image(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/img/profilepicturethree.png'),
                    ),
                  ),
                  StaggeredGridTile.count(
                    crossAxisCellCount: 2,
                    mainAxisCellCount: 3.5,
                    child: Image(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/img/profilepicturefour.png'),
                    ),
                  ),
                  StaggeredGridTile.count(
                    crossAxisCellCount: 2,
                    mainAxisCellCount: 3.5,
                    child: Image(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/img/profilepicturefive.png'),
                    ),
                  ),
                  StaggeredGridTile.count(
                    crossAxisCellCount: 2,
                    mainAxisCellCount: 3.5,
                    child: Image(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/img/profilepicturesix.png'),
                    ),
                  ),
                  StaggeredGridTile.count(
                    crossAxisCellCount: 2,
                    mainAxisCellCount: 2.5,
                    child: Image(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/img/profilepictureseven.png'),
                    ),
                  ),
                ],
              ),
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
