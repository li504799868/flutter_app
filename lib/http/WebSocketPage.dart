import 'package:flutter/material.dart';

import 'package:web_socket_channel/web_socket_channel.dart';

class WebSocketPage extends StatefulWidget {
  final String title;

  final WebSocketChannel channel;

  const WebSocketPage({Key key, this.title, this.channel}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return new _WebSocketPageState();
  }
}

class _WebSocketPageState extends State<WebSocketPage> {
  TextEditingController textEditingController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new Padding(
        padding: const EdgeInsets.all(20.0),
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            new Form(
                child: new TextFormField(
              controller: textEditingController,
              decoration: new InputDecoration(labelText: 'Send a message'),
            )),
            new StreamBuilder(
                stream: widget.channel.stream,
                builder: (context, snapshot) {
                  return new Padding(
                      padding: const EdgeInsets.symmetric(vertical: 24.0),
                      child:
                          new Text(snapshot.hasData ? '${snapshot.data}' : ''));
                })
          ],
        ),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: _sendMessage,
        tooltip: 'Send message',
        child: new Icon(Icons.send),
      ),
    );
  }

  _sendMessage() {
    if (textEditingController.text.isNotEmpty) {
      widget.channel.sink.add(textEditingController.text);
    }
  }

  @override
  void dispose() {
    widget.channel.sink.close();
    super.dispose();
  }
}
