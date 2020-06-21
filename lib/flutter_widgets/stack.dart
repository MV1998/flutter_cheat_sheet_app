import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StackWidget extends StatefulWidget {
  @override
  _StackWidgetState createState() => _StackWidgetState();
}

class _StackWidgetState extends State<StackWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stack'),
      ),
      body: Stack(
        fit: StackFit.values[0],
        alignment: Alignment.center,
        overflow: Overflow.values[0],
        children: <Widget>[
          Container(
            height: 300,
            width: 300,
            color: Colors.deepOrange,
          ),
          Container(
            height: 200,
            width: 200,
            color: Colors.white,
          ),
          Positioned(
            left: 150,
            bottom: 150,
            child: Container(
              height: 100,
              width: 100,
              color: Colors.blue,
              child: Center(
                child: Text('B', style: TextStyle(
                    color: Colors.black,
                    fontSize: 28,
                    fontWeight: FontWeight.bold
                ),),
              ),
            ),
          ),
          Positioned(
            left: 50,
            bottom: 50,
            child: Container(
              height: 100,
              width: 100,
              color: Colors.amber,
              child: Center(
                child: Text('A', style: TextStyle(
                    color: Colors.black,
                    fontSize: 28,
                    fontWeight: FontWeight.bold
                ),),
              ),
            ),
          ),
          Positioned(
            left: 50,
            bottom: 150,
            child: Container(
              height: 100,
              width: 100,
              color: Colors.deepPurple,
              child: Center(
                child: Text('a', style: TextStyle(
                    color: Colors.black,
                    fontSize: 28,
                    fontWeight: FontWeight.bold
                ),),
              ),
            ),
          ),
          Positioned(
            left: 150,
            bottom: 50,
            child: Container(
              height: 100,
              width: 100,
              color: Colors.tealAccent,
              child: Center(
                child: Text('A', style: TextStyle(
                  color: Colors.black,
                  fontSize: 28,
                  fontWeight: FontWeight.bold
                ),),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
