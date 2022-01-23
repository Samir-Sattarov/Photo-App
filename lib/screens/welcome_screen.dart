import 'package:flutter/material.dart';
import 'package:photo/widgets/classes.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/img/welcome-background.jpg'),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
              child: User(
                avatarImg:
                    'https://c4.wallpaperflare.com/wallpaper/301/256/1013/dubai-city-lights-8k-uae-wallpaper-thumb.jpg',
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
