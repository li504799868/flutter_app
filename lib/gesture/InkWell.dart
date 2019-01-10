import 'package:flutter/material.dart';

// 带有点击时有水波纹效果的按钮
class InkWellButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new InkWell(
      onTap: () {
        Scaffold.of(context).showSnackBar(
            new SnackBar(content: new Text("InkWellButton Click")));
      },
      child: new Center(
        child: new Container(
          padding: new EdgeInsets.all(12.0),
          child: new Text("Float Button"),
          color: Colors.lightBlue,
        ),
      ),
    );
  }
}
