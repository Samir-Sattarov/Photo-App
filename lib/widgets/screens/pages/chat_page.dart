import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:photo/widgets/module/list.dart';

class ChatsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        title: Text(
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
                  backgroundImage: NetworkImage(items[i].profileurl),
                ),
                title: Text(items[i].name),
                subtitle: Text(items[i].message),
                trailing: Text(items[i].time),
                onTap: () {
                  Navigator.of(context).pushNamed('/chatview');
                },
              );
            },
            separatorBuilder: (ctx, i) {
              return Divider(
                thickness: 0.8,
                color: Colors.black,
              );
            },
            itemCount: items.length),
      ),
    );
  }
}
