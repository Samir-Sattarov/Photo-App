import 'package:flutter/material.dart';
import 'package:getwidget/components/avatar/gf_avatar.dart';

class ChatViewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          elevation: 1,
          backgroundColor: Colors.white,
          title: Text(
            'James',
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 30),
            Column(
              children: [
                Row(
                  children: [
                    GFAvatar(
                      backgroundImage: NetworkImage(
                          'https://c4.wallpaperflare.com/wallpaper/224/829/129/digital-digital-art-artwork-illustration-simple-hd-wallpaper-thumb.jpg'),
                    ),
                    SizedBox(width: 5),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey[100],
                      ),
                      width: 269,
                      height: 80,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Really love your most recent photo. I’ve been trying to capture the same thing for a few months and would love some tips!',
                          style: TextStyle(fontFamily: 'Robolo'),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey[100],
                  ),
                  width: 269,
                  height: 80,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'A fast 50mm like f1.8 would help with the bokeh. I’ve been using primes as they tend to get a bit sharper images.',
                      style: TextStyle(fontFamily: 'Robolo'),
                    ),
                  ),
                ),
                SizedBox(width: 5),
                GFAvatar(
                  backgroundImage: NetworkImage(
                      'https://c4.wallpaperflare.com/wallpaper/445/729/175/golden-eagle-eagle-bird-fauna-wallpaper-preview.jpg'),
                ),
              ],
            ),
            Column(
              children: [
                SizedBox(height: 30),
                Row(
                  children: [
                    GFAvatar(
                      backgroundImage: NetworkImage(
                          'https://c4.wallpaperflare.com/wallpaper/224/829/129/digital-digital-art-artwork-illustration-simple-hd-wallpaper-thumb.jpg'),
                    ),
                    SizedBox(width: 5),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey[100],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Thank you! That was very helpful!'),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30),
              ],
            ),
          ],
        ));
  }
}
