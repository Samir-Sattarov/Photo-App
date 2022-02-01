import 'package:flutter/material.dart';
import 'package:getwidget/components/avatar/gf_avatar.dart';

class ChatViewPage extends StatelessWidget {
  static route() =>
      MaterialPageRoute(builder: (context) => const ChatViewPage());
  const ChatViewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.black),
          elevation: 1,
          backgroundColor: Colors.white,
          title: const Text(
            'James',
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 30),
              Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const GFAvatar(
                        size: 28,
                        backgroundImage:
                            AssetImage('assets/img/chatmodelone.png'),
                      ),
                      const SizedBox(width: 5),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(0),
                            topRight: Radius.circular(6),
                            bottomLeft: Radius.circular(6),
                            bottomRight: Radius.circular(6),
                          ),
                          color: Colors.grey[100],
                        ),
                        width: 269,
                        height: 80,
                        child: const Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 16, horizontal: 16),
                          child: Text(
                            'Really love your most recent photo. I’ve been trying to capture the same thing for a few months and would love some tips!',
                            style: TextStyle(fontFamily: 'Robolo'),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(6),
                          topRight: Radius.circular(0),
                          bottomLeft: Radius.circular(6),
                          bottomRight: Radius.circular(6),
                        ),
                        color: Colors.grey[100],
                      ),
                      width: 269,
                      height: 80,
                      child: const Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                        child: Text(
                          'A fast 50mm like f1.8 would help with the bokeh. I’ve been using primes as they tend to get a bit sharper images.',
                          style: TextStyle(fontFamily: 'Roboto'),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 5),
                  const GFAvatar(
                      size: 28,
                      backgroundImage:
                          AssetImage('assets/img/profilepicture.png')),
                ],
              ),
              Column(
                children: [
                  const SizedBox(height: 30),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const GFAvatar(
                        size: 28,
                        backgroundImage:
                            AssetImage('assets/img/chatmodelone.png'),
                      ),
                      const SizedBox(width: 5),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(0),
                            topRight: Radius.circular(6),
                            bottomLeft: Radius.circular(6),
                            bottomRight: Radius.circular(6),
                          ),
                          color: Colors.grey[100],
                        ),
                        child: const Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 16, horizontal: 16),
                          child: Text('Thank you! That was very helpful!'),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                ],
              ),
            ],
          ),
        ));
  }
}
