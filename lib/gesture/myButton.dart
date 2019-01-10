import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 通过GestureDetector包装空间，实现手势的点击事件
    return new GestureDetector(
      onTap: () {
        print('MyButton was tapped!');
        // 通过snackBar显示提示
        final snackBar = new SnackBar(
          content: new Text("MyButton was tapped!"),
          action: new SnackBarAction(
              label: "cancel",
              onPressed: () {
                print('cancel');
              }),
        );
        Scaffold.of(context).showSnackBar(snackBar);
      },
      child: new Container(
        height: 36.0,
        padding: const EdgeInsets.all(8.0),
        margin: const EdgeInsets.symmetric(horizontal: 8.0),
        decoration: new BoxDecoration(
            borderRadius: new BorderRadius.circular(5.0),
            color: Colors.lightBlue[500]),
        child: new Center(
          child: new Text(
            "Engage",
            style: new TextStyle(
              color: Colors.white,
              decoration: TextDecoration.none,
            ),
          ),
        ),
      ),
    );
//    return new Scaffold(
//      height: 36.0,
//      padding: const EdgeInsets.all(8.0),
//      margin: const EdgeInsets.symmetric(horizontal: 8.0),
//      decoration: new BoxDecoration(
//          borderRadius: new BorderRadius.circular(5.0),
//          color: Colors.lightBlue[500]),
//       body: new Center(
//           child: new Text("Engage123")
//       ),
//    );
  }
}
