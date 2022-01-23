import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:photo/widgets/listData.dart';

class ChatsPage extends StatelessWidget {
  const ChatsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: ListView.separated(
            itemBuilder: (ctx, i) {
              return ListTile(
                leading: Container(
                  height: 64,
                  width: 64,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(items[i].profileurl)),
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
