import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

class RandomWordsListWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new RandomWordListState();
  }

}
// 生成ListView
class RandomWordListState extends State<RandomWordsListWidget> {
  // 单词数组
  final _suggestions = <WordPair>[];

  // 已收藏的单词
  final _saved = Set<WordPair>();

  // 文字样式
  final _biggerFont = const TextStyle(fontSize: 18.0);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Startup Name Generator'),
        // 添加一个图标，并设置点击事件
        actions: <Widget>[
          new IconButton(icon: new Icon(Icons.list), onPressed: _pushSaved)
        ],
      ),
      body: _buildSuggestions(),
    );
  }

  Widget _buildSuggestions() {
    return new ListView.builder(
      // 设置内边距
//      padding: const EdgeInsets.all(16.0),
      itemBuilder: (context, i) {
        if (i.isOdd) {
          return new Divider();
        }

        // i ~/ 2 表示i除以2，但是向下取整
        final index = i ~/ 2;
        // 如果请求的长度比数字的长度要大
        if (index >= _suggestions.length) {
          // 添加10个随机单词到数组中
          _suggestions.addAll(generateWordPairs().take(10));
        }
        return _buildRow(_suggestions[index]);
      },
    );
  }

  Widget _buildRow(WordPair wordPair) {
    final alreadySaved = _saved.contains(wordPair);

    return new ListTile(
      title: new Text(
        wordPair.asPascalCase,
        style: _biggerFont,
      ),
      trailing: new Icon(
        alreadySaved ? Icons.favorite : Icons.favorite_border,
        color: alreadySaved ? Colors.red : null,
      ),
      // 点击事件，切换收藏状态
      onTap: () {
        setState(() {
          if (alreadySaved) {
            _saved.remove(wordPair);
          }
          else {
            _saved.add(wordPair);
          }
        });
      },
    );
  }

  void _pushSaved() {
    // 跳转到新的页面
    Navigator.of(context).push(
        new MaterialPageRoute(
            builder: (context) {
              // 遍历保存的单词，生成ListView的item
              final tiles = _saved.map((pair) {
                return new ListTile(
                    title: new Text(
                      pair.asPascalCase,
                      style: _biggerFont,
                    )
                );
              });
              // 通过生成的item，创建分割线
              final divider = ListTile.divideTiles(
                  context: context,
                  tiles: tiles)
              .toList();
              // 返回新的页面的布局
              return new Scaffold(
                appBar: new AppBar(
                  title: new Text("Saved Suggestion"),
                ),
                body: new ListView(children: divider),
              );

            }
        )
    );
  }

}