import 'package:flutter/material.dart';
import 'package:photo/widgets/classes.dart';
import 'package:photo/widgets/listData.dart';

import 'home.dart';

class SearchPage extends StatelessWidget {
  static route() => MaterialPageRoute(builder: (context) => const SearchPage());
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(left: 16, right: 16, top: 100),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const ScreenTitle(txt: 'Search'),
              const SizedBox(height: 32),
              const TextFieldWidget(
                hide: false,
                hintTxt: 'Search all photosm',
                keyboard: TextInputType.text,
              ),
              const SizedBox(height: 32),
              const CategoryTitle(txt: 'All results'),
              GridView(
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 9,
                    mainAxisSpacing: 9,
                    mainAxisExtent: 100),
                children: gridImages
                    .map((img) => GridPhotoWidget(
                          data: img,
                        ))
                    .toList(),
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
      ),
    );
  }
}
