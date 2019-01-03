import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  final Widget title;

  MyAppBar({this.title});

  @override
  Widget build(BuildContext context) {
    return new Container(
      height: 56,
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      decoration: new BoxDecoration(color: Colors.blue[500]),
      child: new Row(
        children: <Widget>[
          new IconButton(
              icon: new Icon(Icons.menu),
              tooltip: 'Navigation menu',
              onPressed: null),
          // 会自适应剩下的宽度
          new Expanded(child: title),
          new IconButton(
              icon: new Icon(Icons.search), tooltip: 'search', onPressed: null)
        ],
      ),
    );
  }
}

class MyScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Material(
      child: new Column(
        children: <Widget>[
          new MyAppBar(
              title: new Text(
            'Example title',
            style: Theme.of(context).primaryTextTheme.title,
          )),
          new Expanded(
            child: new Center(
              child: new Text('Hello, world!'),
            ),
          )
        ],
      ),
    );
  }
}
