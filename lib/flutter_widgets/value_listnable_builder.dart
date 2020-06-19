import 'package:flutter/material.dart';

class ValueListenableWidget extends StatefulWidget {

  @override
  _ValueListenableWidgetState createState() => _ValueListenableWidgetState();

}

class _ValueListenableWidgetState extends State<ValueListenableWidget> {

  MyNotifier _myNotifier = MyNotifier(Counter(1));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Value Listenable Widget'),
      ),
      body: Column(
        children: <Widget>[
          Container(
            child: ValueListenableBuilder(
              builder: (context, value, child){
                return Text('${value.count}');
              },
              valueListenable: _myNotifier,
            ),
          ),
          RaisedButton(
            onPressed: () {
              _myNotifier.addTwo();
            },
            child: Text('Change Value'),
          )
        ],
      ),
    );
  }
}

class Counter {

  Counter(this.count);

  int count;

  void increment() => count++;

}

class MyNotifier extends ValueNotifier<Counter> {

  MyNotifier(Counter value) : super(value);

  void addTwo() {
    value.increment();

    value.increment();

    notifyListeners();
  }

}