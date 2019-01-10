import 'dart:io';

import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

class Post {
  final int userId;
  final int id;
  final String title;
  final String body;

  Post({this.userId, this.id, this.title, this.body});

  factory Post.fromJson(Map<String, dynamic> json) {
    return new Post(
      userId: json['userId'],
      id: json['id'],
      title: json['title'],
      body: json['body'],
    );
  }
}

Future<Post> fetchPost() async {
  Response response = await Dio().get(
      "https://jsonplaceholder.typicode.com/posts/1",
      // 添加header信息
      options: new Options(headers: {HttpHeaders.authorizationHeader: "lzp"}));
  return new Post.fromJson(response.data);
}

class HttpGetBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: new Text('HttpGet'),
      ),
      body: new Center(
        child: new FutureBuilder<Post>(
            future: fetchPost(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return new Text(snapshot.data.title);
              } else if (snapshot.hasError) {
                return new Text("${snapshot.error}");
              }

              // default
              return new CircularProgressIndicator();
            }),
      ),
    );
  }
}
