import 'package:flutter/material.dart';
import 'package:getwidget/components/avatar/gf_avatar.dart';
import 'package:photo/widgets/module/class.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/welcome-background.jpg'),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
              child: User(
                avatarImg:
                    'https://c4.wallpaperflare.com/wallpaper/445/729/175/golden-eagle-eagle-bird-fauna-wallpaper-preview.jpg',
                name: 'Pawel Czerwinski',
                id: '@pawel_czerwinski',
              ),
            ),
            Container(
              color: Colors.white,
              height: 105,
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ButtonWidget(
                      weight: 167,
                      height: 52,
                      backgound: Colors.white,
                      txtColor: Colors.black,
                      txt: 'log in',
                      function: () {
                        Navigator.of(context).pushNamed('/login');
                      }),
                  ButtonWidget(
                    weight: 167,
                    height: 52,
                    backgound: Colors.black,
                    txtColor: Colors.white,
                    txt: 'register',
                    function: () {
                      Navigator.of(context).pushNamed('/registerFirst');
                    },
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
