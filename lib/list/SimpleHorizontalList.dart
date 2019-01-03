import 'package:flutter/material.dart';

class SimpleHorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        new Container(
          width: 160,
          color: Colors.red,
        ),
        new Container(
          width: 160,
          color: Colors.cyan,
        ),
        new Container(
          color: Colors.lightBlue,
          width: 160,
        )
      ],
    );
  }
}
