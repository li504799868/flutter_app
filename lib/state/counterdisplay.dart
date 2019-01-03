import 'package:flutter/material.dart';

class CounterDisplay extends StatelessWidget {
  final int count;

  const CounterDisplay({Key key, this.count}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Text("Counter: $count", style: TextStyle(fontSize: 14.0));
  }
}

class CounterIncrementor extends StatelessWidget {
  
  final VoidCallback onPressed;

  const CounterIncrementor({Key key, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new RaisedButton(
      onPressed: onPressed,
      child: new Text(
        'Increment',
        style: TextStyle(fontSize: 14.0),
      ),
    );
  }
}

class Counter extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new CounterState();
  }
}

class CounterState extends State<Counter> {
  int _counter = 0;

  void _increment() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Row(
      children: <Widget>[
        new CounterIncrementor(
          onPressed: _increment,
        ),
        new CounterDisplay(
          count: _counter,
        )
      ],
    );
  }
}
