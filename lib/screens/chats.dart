import 'package:flutter/material.dart';
import 'package:photo/screens/inside_chat.dart';
import 'package:photo/widgets/listData.dart';

class ChatsPage extends StatelessWidget {
  static route() => MaterialPageRoute(builder: (context) => const ChatsPage());
  const ChatsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 1,
        backgroundColor: Colors.white,
        title: const Text(
          'Chats',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: ListView.separated(
          itemBuilder: (ctx, i) {
            return Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: ListTile(
                leading: Container(
                  height: 64,
                  width: 64,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(items[i].profileurl)),
                    shape: BoxShape.circle,
                  ),
                ),
                title: Text(
                  items[i].name,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontFamily: 'Robolo'),
                ),
                subtitle: Text(items[i].message,
                    style: const TextStyle(fontFamily: 'Robolo')),
                onTap: () {
                  Navigator.of(context).push(ChatViewPage.route());
                },
              ),
            );
          },
          separatorBuilder: (ctx, i) {
            return const Divider(
              thickness: 0.5,
              color: Colors.grey,
            );
          },
          itemCount: items.length),
    );
  }
}
