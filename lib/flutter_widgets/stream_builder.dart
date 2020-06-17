import 'dart:async';

import 'package:flutter/material.dart';

class StreamBuilderWidget extends StatefulWidget {
  @override
  _StreamBuilderWidgetState createState() => _StreamBuilderWidgetState();
}

class _StreamBuilderWidgetState extends State<StreamBuilderWidget> {
  bool _isButtonClicked = false;
  var counterStream = Stream<double>.periodic(
    Duration(milliseconds: 100),
        (x) => (x * 2).toDouble(),
  );


  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stream Builder'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: StreamBuilder(
            stream: _isButtonClicked ? counterStream : null,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
               return Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.all(24),
                      height: snapshot.data,
                      width: snapshot.data,
                      color: Colors.indigo,
                    ),
                    Container(
                      margin: EdgeInsets.all(24),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.all(6),
                            child: Text(
                              "Height: ${snapshot.data}",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Theme.of(context).backgroundColor,
                                  fontSize: 18),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(6),
                            child: Text(
                              "Width: ${snapshot.data}",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Theme.of(context).backgroundColor,
                                  fontSize: 18),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                );
              }
              return CircularProgressIndicator();
            },
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Colors.green,
        onPressed: _isButtonClicked == false
            ? () {
          ///You need to reset UI by calling setState.
          setState(() {
            _isButtonClicked == false
                ? _isButtonClicked = true
                : _isButtonClicked = false;
          });
        }
            : null,
        icon: Icon(
          Icons.linear_scale,
          color: Colors.white,
        ),
        label: Text(
          "Start Stream",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}
