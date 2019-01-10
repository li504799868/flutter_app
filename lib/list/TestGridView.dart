import 'package:flutter/material.dart';

class TestGridView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new GridView.count(
        crossAxisCount: 3,
        children: new List.generate(100, (index) {
          return new Center(
            child:
                new Text("$index", style: Theme.of(context).textTheme.headline),
          );
        }));
  }
}
