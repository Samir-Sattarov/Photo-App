import 'package:flutter/material.dart';

import 'package:photo/widgets/classes.dart';
import 'package:photo/widgets/data.dart';
import 'package:photo/widgets/listData.dart';

class HomePageWidget extends StatefulWidget {
  @override
  State<HomePageWidget> createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Container(
          margin: const EdgeInsets.only(left: 16, right: 16, top: 50),
          width: 343,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const ScreenTitle(txt: 'Discover'),
              const SizedBox(height: 32),
              const CategoryTitle(txt: 'What’s new today'),
              const SizedBox(height: 24),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children:
                      mainPhoto.map((data) => MainPhoto(data: data)).toList(),
                ),
              ),
              SizedBox(height: 48),
              CategoryTitle(txt: 'Browse all'),
              const SizedBox(height: 24),
              GridView(
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 9,
                    mainAxisSpacing: 9,
                    mainAxisExtent: 150),
                children: gridImages
                    .map((img) => GridPhotoWidget(data: img))
                    .toList(),
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
                  function: () {})
            ],
          ),
        ),
      ]),
    );
  }
}

class MainPhoto extends StatelessWidget {
  final MainPhotoData data;

  const MainPhoto({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 18),
          child: Container(
            width: 343,
            height: 343,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover, image: NetworkImage("${data.img}"))),
          ),
        ),
        SizedBox(height: 16),
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                User(
                    name: '${data.name}',
                    id: '${data.id}',
                    avatarImg: '${data.avatarImage}')
              ],
            ),
          ],
        ),
      ],
    );
  }
}

class GridPhotoWidget extends StatelessWidget {
  final GridImages data;
  const GridPhotoWidget({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 307,
      height: 307,
      child: Image(
        fit: BoxFit.cover,
        image: NetworkImage('${data.img}'),
      ),
    );
  }
}
