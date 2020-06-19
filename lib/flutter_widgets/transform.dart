import 'package:flutter/material.dart';
import 'dart:math' as math;

class TransformWidget extends StatefulWidget {
  @override
  _TransformWidgetState createState() => _TransformWidgetState();
}

class _TransformWidgetState extends State<TransformWidget>
    with SingleTickerProviderStateMixin {
  AnimationController _animationController;
  var xValue = 100.0;

  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 250));
    _animationController.forward();
  }

  void toggle() => _animationController.isDismissed
      ? _animationController.forward()
      : _animationController.reverse();

  @override
  Widget build(BuildContext context) {
    var myDrawer = Container(
      color: Colors.blue,
      child: ListView(
        children: <Widget>[
          Padding(
              padding: EdgeInsets.only(left: 10, top: 10),
              child: Text(
                'Flutter',
                style: TextStyle(
                    fontWeight: FontWeight.normal,
                    color: Colors.white30,
                    fontSize: 40),
              )),
          Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text(
                'Europe',
                style: TextStyle(
                    fontWeight: FontWeight.normal,
                    color: Colors.white,
                    fontSize: 50),
              )),
          ListTile(
            leading: Icon(
              Icons.call,
              color: Colors.white,
            ),
            title: Text('Call', style: TextStyle(
              color: Colors.white
            ),),
          ),
          ListTile(
            leading: Icon(
              Icons.email,
              color: Colors.white,
            ),
            title: Text('Email',style: TextStyle(
                color: Colors.white
            ),),
          ),
          ListTile(
            leading: Icon(
              Icons.image,
              color: Colors.white,
            ),
            title: Text('Image', style: TextStyle(
                color: Colors.white
            ),),
          ),
        ],
      ),
    );
    var myChild = Container(
      color: Colors.yellow,
    );
    return SafeArea(
      child: Scaffold(
          body: GestureDetector(
        onTap: toggle,
        child: AnimatedBuilder(
          animation: _animationController,
          builder: (context, child) {
            double slide = 225.0 * _animationController.value;
            double scale = 1 - (_animationController.value * 0.3);
            return Stack(
              children: <Widget>[
                myDrawer,
                Transform.translate(
                  offset: Offset(225.0 * (_animationController.value - 1), 0),
                  child: Transform(
                    transform: Matrix4.identity()
                    ..setEntry(3, 2, 0.001)
                      ..rotateY(-math.pi / 2 * ( 1 - _animationController.value)),
                    alignment: Alignment.centerLeft,
                    child: myChild,
                  ),
                ),
              ],
            );
          },
        ),
      )),
    );
  }
}
