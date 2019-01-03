import 'package:flutter/material.dart';

class LongList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 创建数据源
    final dataSource = new List<String>.generate(10000, (i) => "Item $i");
    // 通过builder创建的列表会在滚动到屏幕中才会创建，适合填充长列表
    // 直接调用ListView需要直接填充所有的内容，适合小列表
    return new ListView.builder(
        itemCount: dataSource.length,
        itemBuilder: (context, i) {
          return new ListTile(
            title: new Text(dataSource[i]),
          );
        });
  }
}
