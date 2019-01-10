import 'package:flutter/material.dart';

class SlidingDeleteListView extends StatelessWidget {
  final List<String> list;

  const SlidingDeleteListView({Key key, this.list}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
        itemCount: list.length,
        itemBuilder: (context, position) {
          final item = list[position];
          return new Dismissible(
            key: new Key(item),
            child: new ListTile(
              title: new Text(item),
            ),
            onDismissed: (direction) {
              list.removeAt(position);
            },
            background: new Container(color: Colors.red),
          );
        });
  }
}
