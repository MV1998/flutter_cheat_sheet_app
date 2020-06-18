import 'package:flutter/material.dart';

class ClipRRectWidget extends StatefulWidget {
  @override
  _ClipRRectWidgetState createState() => _ClipRRectWidgetState();
}

class _ClipRRectWidgetState extends State<ClipRRectWidget> {

  var _value = 50.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ClipRRect'),
      ),
      body: ListView(children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: 24, bottom: 24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                width: 200,
                height: 200,
                margin: EdgeInsets.all(12),
                child: Stack(
                  children: <Widget>[
                    ClipRRect(
                      child: Image.network('https://picsum.photos/200/300'),
                      borderRadius: BorderRadius.circular(_value),
                      clipBehavior: Clip.antiAlias,
                    ),
                  ],
                ),
              ),
              Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(12),
                    child: Text(
                      'Slide the slider widget to change the value of radius\n'
                          'to observe changes on borders of the widget below',
                      style: TextStyle(
                          color: Colors.grey[400],
                          fontSize: 14.0,
                          fontStyle: FontStyle.italic,),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 24),
                child: Slider(
                  value: _value,
                  activeColor: Colors.lightBlue,
                  inactiveColor: Colors.lightBlue[50],
                  min: 0.0,
                  max: 100.0,
                  divisions: 100,
                  label: '${_value.round()}',
                  onChanged: (double value) {
                    setState(() {
                      _value = value;
                    });
                  },
                ),
              ),
              const Text('Drag to change value of Radius'),
            ],
          ),
        ),
      ]),
    );
  }
}

