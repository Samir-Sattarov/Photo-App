import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:photo/widgets/classes.dart';
import 'package:photo/widgets/data.dart';
import 'package:photo/widgets/listData.dart';
import 'inside_photo.dart';

class HomeScreen extends StatefulWidget {
  static route() => MaterialPageRoute(builder: (context) => const HomeScreen());

  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16, top: 50),
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const ScreenTitle(txt: 'Discover'),
                const SizedBox(height: 32),
                const CategoryTitle(txt: 'What’s new today'),
                const SizedBox(height: 24),
                Container(
                  padding: EdgeInsets.zero,
                  width: MediaQuery.of(context).size.width,
                  height: 395,
                  child: PageView(
                    physics: ClampingScrollPhysics(),
                    pageSnapping: true,
                    scrollDirection: Axis.horizontal,
                    children:
                        mainPhoto.map((data) => MainPhoto(data: data)).toList(),
                  ),
                ),
                const SizedBox(height: 48),
                const CategoryTitle(txt: 'Browse all'),
                const SizedBox(height: 24),
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
                          image: AssetImage('assets/img/gridone.png'),
                        ),
                      ),
                      StaggeredGridTile.count(
                        crossAxisCellCount: 2,
                        mainAxisCellCount: 3.5,
                        child: Image(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/img/gridtwo.png'),
                        ),
                      ),
                      StaggeredGridTile.count(
                        crossAxisCellCount: 2,
                        mainAxisCellCount: 3.5,
                        child: Image(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/img/gridthree.png'),
                        ),
                      ),
                      StaggeredGridTile.count(
                        crossAxisCellCount: 2,
                        mainAxisCellCount: 3.5,
                        child: Image(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/img/gridfour.png'),
                        ),
                      ),
                      StaggeredGridTile.count(
                        crossAxisCellCount: 2,
                        mainAxisCellCount: 2.5,
                        child: Image(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/img/gridfive.png'),
                        ),
                      ),
                      StaggeredGridTile.count(
                        crossAxisCellCount: 2,
                        mainAxisCellCount: 2.5,
                        child: Image(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/img/gridsix.png'),
                        ),
                      ),
                      StaggeredGridTile.count(
                        crossAxisCellCount: 2,
                        mainAxisCellCount: 3.5,
                        child: Image(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/img/gridseven.png'),
                        ),
                      ),
                      StaggeredGridTile.count(
                        crossAxisCellCount: 2,
                        mainAxisCellCount: 3.5,
                        child: Image(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/img/gridnine.png'),
                        ),
                      ),
                      StaggeredGridTile.count(
                        crossAxisCellCount: 2,
                        mainAxisCellCount: 3.5,
                        child: Image(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/img/gridsix.png'),
                        ),
                      ),
                      StaggeredGridTile.count(
                        crossAxisCellCount: 2,
                        mainAxisCellCount: 2.5,
                        child: Image(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/img/gridone.png'),
                        ),
                      ),
                    ],
                  ),
                ),
                // GridView(
                //   dragStartBehavior: DragStartBehavior.down,
                //   physics: const NeverScrollableScrollPhysics(),
                //   gridDelegate: XSliverGridDelegate(
                //     crossAxisSpacing: 9,
                //     crossAxisCount: 2,
                //     smallCellExtent: 220,
                //     bigCellExtent: 310,
                //     isFirstCellBig: false,
                //   ),
                //   children: gridImages
                //       .map((img) => Padding(
                //             padding: const EdgeInsets.only(bottom: 9.0),
                //             child: GridPhotoWidget(data: img),
                //           ))
                //       .toList(),
                //   shrinkWrap: true,
                // ),
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
      ),
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
        GestureDetector(
          onTap: () {
            Navigator.of(context).push(InsidePhotoPage.route());
          },
          child: Container(
            width: 343,
            height: 343,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover, image: AssetImage(data.img))),
          ),
        ),
        const SizedBox(height: 16),
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                User(name: data.name, id: data.id, avatarImg: data.avatarImage)
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
    return SizedBox(
      child: Image(
        fit: BoxFit.cover,
        image: AssetImage(data.img),
      ),
    );
  }
}
