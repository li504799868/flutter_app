import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

class RandomWords extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return new RandomWordsState();
  }

}

class RandomWordsState extends State<RandomWords>{

  @override
  Widget build(BuildContext context) {
    final wordPair = new WordPair.random();
    return new Text(wordPair.asPascalCase);
  }

}

