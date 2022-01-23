import 'package:flutter/material.dart';
import 'package:photo/widgets/classes.dart';
import 'package:photo/widgets/data.dart';
import 'package:photo/widgets/listData.dart';

import 'home_page.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(left: 16, right: 16, top: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const ScreenTitle(txt: 'Search'),
              SizedBox(height: 32),
              TextFieldWidget(
                hide: false,
                hintTxt: 'Search all photosm',
                keyboard: TextInputType.text,
              ),
              SizedBox(height: 32),
              CategoryTitle(txt: 'All results'),
              SizedBox(height: 24),
              GridView(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 9,
                    mainAxisSpacing: 9,
                    mainAxisExtent: 100),
                children: gridImages
                    .map((img) => GridPhotoWidget(data: img))
                    .toList(),
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
      ),
    );
  }
}
