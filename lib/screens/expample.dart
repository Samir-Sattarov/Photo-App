import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:flutter_grid_delegate_ext/flutter_grid_delegate_ext.dart';
import 'package:photo/widgets/classes.dart';
import 'package:photo/widgets/listData.dart';

import 'home.dart';

class Example extends StatefulWidget {
  const Example({Key? key}) : super(key: key);

  @override
  _ExampleState createState() => _ExampleState();
}

class _ExampleState extends State<Example> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          margin: const EdgeInsets.only(left: 16, right: 16, top: 50),
          width: 343,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const ScreenTitle(txt: 'Discover'),
              const SizedBox(height: 32),
              const CategoryTitle(txt: 'What’s new today'),
              const SizedBox(height: 24),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 395,
                child: PageView(
                  scrollDirection: Axis.horizontal,
                  children:
                      mainPhoto.map((data) => MainPhoto(data: data)).toList(),
                ),
              ),
              const SizedBox(height: 48),
              const CategoryTitle(txt: 'Browse all'),
              GridView(
                dragStartBehavior: DragStartBehavior.down,
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
