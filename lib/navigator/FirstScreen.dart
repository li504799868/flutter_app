import 'package:flutter/material.dart';
import 'package:flutter_app/navigator/SecondScreen.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text("FirstScreen")),
      body: new Center(
        child: new PressButton(),
      ),
    );
  }
}

class PressButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new RaisedButton(onPressed: () {
      // 点击跳转到指定页面
      // 得到返回的结果
      _navigateToSecondScreen(context);
    });
  }

  _navigateToSecondScreen(BuildContext context) async {
    final result = await Navigator.push(
        context,
        new MaterialPageRoute(
            // 传递参数
            builder: (context) => new SecondScreen(
                  argument: "very good",
                )));
    Scaffold.of(context)
        .showSnackBar(new SnackBar(content: new Text("$result")));
  }
}
