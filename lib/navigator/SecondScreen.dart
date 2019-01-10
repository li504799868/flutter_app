import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  final String argument;

  const SecondScreen({Key key, this.argument}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text("SecondScreen")),
      body: new Container(
        child: new Row(
          children: <Widget>[
            new Text(argument),
            new RaisedButton(onPressed: () {
              // 点击跳转到指定页面
              Navigator.pop(context, "very good,too");
            }),
          ],
        ),
      ),
    );
  }
}
