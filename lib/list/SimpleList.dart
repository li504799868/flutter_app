import 'package:flutter/material.dart';

class SimpleList extends StatelessWidget{
  
  @override
  Widget build(BuildContext context) {
    return new ListView(
      children: <Widget>[
        new ListTile(
          leading: new Icon(Icons.map),
          title: new Text("map"),
        ),
        new ListTile(
          leading: new Icon(Icons.photo_album),
          title: new Text("photo"),
        ),
        new ListTile(
          leading: new Icon(Icons.phone),
          title: new Text("title"),
        )
      ],
    );
  }
  
}