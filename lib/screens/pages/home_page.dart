import 'package:flutter/material.dart';
import 'package:getwidget/components/avatar/gf_avatar.dart';
import 'package:photo/widgets/classes.dart';
import 'package:photo/widgets/list.dart';
import 'chat_page.dart';
import 'search_page.dart';

class HomePageWidget extends StatefulWidget {
  @override
  State<HomePageWidget> createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  @override
  Widget build(BuildContext context) {
    int currentTapIndex = 0;

    return Scaffold(
      body: ListView(children: [
        Container(
          margin: EdgeInsets.only(left: 16, right: 16, top: 50),
          width: 343,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ScreenTitle(txt: 'Discover'),
              SizedBox(height: 32),
              CategoryTitle(txt: 'What’s new today'),
              SizedBox(height: 24),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children:
                      mainPhoto.map((data) => MainPhoto(data: data)).toList(),
                ),
              ),
              SizedBox(height: 48),
              CategoryTitle(txt: 'Browse all'),
              SizedBox(height: 24),
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
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        enableFeedback: true,
        unselectedLabelStyle: TextStyle(color: Colors.black),
        unselectedItemColor: Colors.black54,
        selectedItemColor: Colors.black87,
        selectedIconTheme: IconThemeData(color: Colors.black),
        type: BottomNavigationBarType.fixed,
        currentIndex: currentTapIndex,
        items: [
          BottomNavigationBarItem(
            label: ' ',
            icon: Icon(
              Icons.home_outlined,
            ),
          ),
          BottomNavigationBarItem(
            label: ' ',
            icon: Icon(
              Icons.search_outlined,
            ),
          ),
          BottomNavigationBarItem(
            label: ' ',
            icon: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    Color(0xffFF00D6),
                    Color(0xffFF4D00),
                  ],
                ),
                borderRadius: BorderRadius.circular(30),
              ),
              width: 200,
              height: 30,
              child: Icon(
                Icons.add,
                color: Colors.white,
              ),
            ),
          ),
          BottomNavigationBarItem(
            label: ' ',
            icon: Icon(
              Icons.chat_outlined,
            ),
          ),
          BottomNavigationBarItem(
            label: ' ',
            icon: Icon(
              Icons.person_outline,
            ),
          ),
        ],
        onTap: (index) {
          setState(() {
            currentTapIndex = index;
            if (currentTapIndex == 0) {
              Navigator.pushNamed(context, '/home');
            } else if (currentTapIndex == 1) {
              Navigator.pushNamed(context, '/search');
            } else if (currentTapIndex == 2) {
              print('object');
            } else if (currentTapIndex == 3) {
              Navigator.pushNamed(context, '/chat');
            } else if (currentTapIndex == 4) {
              Navigator.pushNamed(context, '/profile');
            }
          });
        },
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
