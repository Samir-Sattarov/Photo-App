import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:photo/widgets/listData.dart';

class ChatsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 1,
        backgroundColor: Colors.white,
        title: const Text(
          'Chats',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: ListView.separated(
            itemBuilder: (ctx, i) {
              return ListTile(
                leading: GFAvatar(
                  size: 64,
                  backgroundImage: NetworkImage(items[i].profileurl),
                ),
                title: Text(
                  items[i].name,
                  style: TextStyle(
                      fontWeight: FontWeight.bold, fontFamily: 'Robolo'),
                ),
                subtitle: Text(items[i].message,
                    style: TextStyle(fontFamily: 'Robolo')),
                trailing: Text(items[i].time),
                onTap: () {
                  Navigator.of(context).pushNamed('/chatview');
                },
              );
            },
            separatorBuilder: (ctx, i) {
              return const Divider(
                thickness: 0.5,
                color: Colors.grey,
              );
            },
            itemCount: items.length),
      ),
    );
  }
}
