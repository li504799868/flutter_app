import 'package:flutter/material.dart';

class TutorialHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        leading: new IconButton(
            icon: new Icon(Icons.menu),
            tooltip: 'Navigation menu',
            onPressed: null),
        title: new Text('Example title'),
        actions: <Widget>[
          new IconButton(
              icon: new Icon(Icons.search), tooltip: 'Search', onPressed: null)
        ],
      ),
      body: new Center(
        child: new Text('Hello world'),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: null,
        tooltip: 'Add',
        child: new IconButton(icon: new Icon(Icons.add), onPressed: null),
      ),
    );
  }
}
