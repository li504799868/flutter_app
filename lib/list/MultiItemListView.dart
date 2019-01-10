import 'package:flutter/material.dart';

class MultiItemListView extends StatelessWidget {
  final List<ListItem> items;

  const MultiItemListView({Key key, this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          if (item is HeaderItem) {
            return new ListTile(
              title: new Text(
                item.heading,
                style: Theme.of(context).textTheme.headline,
              ),
            );
          } else if (item is MessageItem) {
            return ListTile(
              title: new Text(item.sender),
              subtitle: new Text(item.body),
            );
          }
        });
  }
}

abstract class ListItem {}

class HeaderItem extends ListItem {
  final String heading;

  HeaderItem(this.heading);
}

class MessageItem extends ListItem {
  final String sender;
  final String body;

  MessageItem(this.sender, this.body);
}
