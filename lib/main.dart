import 'package:flutter/material.dart';
import 'package:flutter_app/container/container.dart';
import 'package:flutter_app/gesture/InkWell.dart';
import 'package:flutter_app/http/HttpGet.dart';
import 'package:flutter_app/http/WebSocketPage.dart';
import 'package:flutter_app/indicator/AppBarBottomSample.dart';
import 'package:flutter_app/indicator/BasicAppBarSample.dart';
import 'package:flutter_app/indicator/TabbedAppBarSample.dart';
import 'package:flutter_app/list/AnimatedListSample.dart';
import 'package:flutter_app/list/ExpansionTileSample.dart';
import 'package:flutter_app/list/LongList.dart';
import 'package:flutter_app/list/MultiItemListView.dart';
import 'package:flutter_app/list/SimpleHorizontalList.dart';
import 'package:flutter_app/list/SlidingDeleteListView.dart';
import 'package:flutter_app/list/TestGridView.dart';
import 'package:flutter_app/list/list.dart';
import 'package:flutter_app/navigator/FirstScreen.dart';
import 'package:flutter_app/shop/shoplist.dart';
import 'package:flutter_app/tutorial/tutorial.dart';
import 'package:flutter_app/word/word.dart';
import 'package:flutter_app/gesture/myButton.dart';

//import 'package:flutter_app/state/counter.dart';
import 'package:flutter_app/state/counterdisplay.dart';
import 'package:flutter_app/theme/MyHomePage.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_app/list/SimpleList.dart';
import 'package:web_socket_channel/io.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
//    final wordPair = new WordPair.random();
//    return new MaterialApp(
//      title: 'Welcome to Flutter',
//      home: new Scaffold(
//        appBar: new AppBar(
//          title: new Text('Welcome to Flutter1'),
//        ),
//        body: new Center(
//          child: new Text('Hello World123'),
//          child: new Text(wordPair.asPascalCase),
//          child: new RandomWords(),
//        ),
//      ),
//    );
//    return new MaterialApp(
//      title: 'Startup Name Generator',
//       设置应用主题为白色
//      theme: new ThemeData(
//        primaryColor: Colors.red
//      ),
//      home: new RandomWordsListWidget(),
//    );
//    return new MaterialApp(
//      title: 'My App',
//      home: new MyScaffold(),
//    );
//    return new MaterialApp(
//        title: "Flutter Tutorial",
//        home: new TutorialHome()
//    );

    // 设置点击事件的Button
//    return new MaterialApp(
//        title: "GestureDetector",
//        home: new Scaffold(
//          appBar: new AppBar(
//            title: new Text("GestureDetector"),
//          ),
//          body: new MyButton(),
//        ));
//  return new MaterialApp(
//    home: Counter(),
//  );

//  return new MaterialApp(
//    home: Counter(),
//  );

//    return new MaterialApp(
//      home: new ShoppingList(products: <Product>[
//        new Product(name: "111"),
//        new Product(name: "222"),
//        new Product(name: "333")
//      ]),
//    );
    // 设置主题
//    final appName = "AppName";
//    return new MaterialApp(
//      title: appName,
//      theme: new ThemeData(
//        brightness: Brightness.dark,
//        primaryColor: Colors.lightBlue[800],
//        accentColor: Colors.cyan[600]
//      ),
//      home: new MyHomePage(title: appName),
//    );

    // 从网上加载图片
//    return new MaterialApp(
//      title: 'Web Images',
//      home: new Scaffold(
//        appBar: new AppBar(
//          title: new Text('Web Images'),
//        ),
//         默认支持gif
//        body: new Image.network(
//            'https://camo.githubusercontent.com/577ecc58618c3dc6692ad54dd8bb29525a64f843/68747470733a2f2f696d672d626c6f672e6373646e696d672e636e2f32303139303130333137303932333634382e676966'),
//      ),
//    );

    //  使用图片占位符
//    final url =
//        'https://camo.githubusercontent.com/577ecc58618c3dc6692ad54dd8bb29525a64f843/68747470733a2f2f696d672d626c6f672e6373646e696d672e636e2f32303139303130333137303932333634382e676966';
//    final title = 'Fade in images';
//    return new MaterialApp(
//      title: title,
//      home: new Scaffold(
//        appBar: new AppBar(
//            title: new Text(title),
//        ),
//        body: new Stack(
//          children: <Widget>[
//            new Center(
//              child: new CircularProgressIndicator(),
//            ),
//            new Center(
//              child: new FadeInImage.memoryNetwork(
//                  placeholder: kTransparentImage,
//                  image: url)
//            )
//          ],
//        ),
//      ),
//    );
    // 使用缓存加载图片
//    final title = 'Cache in images';
//    return new MaterialApp(
//      title: title,
//      home: new Scaffold(
//        appBar: new AppBar(
//          title: new Text(title),
//        ),
//        body: new Stack(
//          children: <Widget>[
//            new Center(
//                child: new CachedNetworkImage(
//                    placeholder: new CircularProgressIndicator(),
//                    imageUrl: url))
//          ],
//        ),
//      ),
//    );

    // 普通ListView
//      return new MaterialApp(
//        home: new Scaffold(
//          appBar: new AppBar(
//            title: new Text("SimpleList"),
//          ),
//          body: new LongList(),
//        )
//      );

    // 不同item的ListView
//    return new MaterialApp(
//      home: Scaffold(
//        appBar: new AppBar(
//          title: new Text("MultiItemListView"),
//        ),
//        body: new MultiItemListView(
//          items: new List<ListItem>.generate(
//              100,
//              (i) => i % 3 == 0
//                  ? new HeaderItem("Heading $i")
//                  : new MessageItem("Sender $i", "Message body $i")),
//        ),
//      ),
//    );

    // GridView
//    return new MaterialApp(
//        home: new Scaffold(
//      appBar: new AppBar(
//        title: new Text("GridView"),
//      ),
//      body: new TestGridView(),
//    ));

    // InkWell
//    return new MaterialApp(
//      home: new Scaffold(
//        appBar: new AppBar(
//          title: new Text("InkWell Button"),
//        ),
//        body: new InkWellButton(),
//      ),
//    );

    // 滑动删除的ListView
//    return new MaterialApp(
//      home: new Scaffold(
//        appBar: new AppBar(
//          title: new Text("SlidingDeleteListView"),
//        ),
//        body: new SlidingDeleteListView(
//          list: new List.generate(100, (i) => "item $i"),
//        ),
//      ),
//    );

    // 页面跳转
//    return new MaterialApp(
//      home: new FirstScreen(),
//    );

    // 普通的get请求
//    return new MaterialApp(
//      home: new HttpGetBody(),
//    );

    // WebSocket
//    return new MaterialApp(
//      home: new WebSocketPage(
//          title: "WebSocket Demo",
//          channel: new IOWebSocketChannel.connect('ws://echo.websocket.org')),
//    );

    // 滑动添加和删除的列表
//    return new AnimatedListSample();

    // 选项卡
//    return new AppBarBottomSample();

    // appbar选中
//    return new BasicAppBarSample();

    // item带有子Item的ListView
//    return new ExpansionTileSample();

    // TabBar
    return new TabbedAppBarSample();
  }

}
