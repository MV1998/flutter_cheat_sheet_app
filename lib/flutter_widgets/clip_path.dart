import 'package:flutter/material.dart';

import '../utils.dart';

class ClipPathWidget extends StatefulWidget {
  @override
  _ClipPathWidgetState createState() => _ClipPathWidgetState();
}

class _ClipPathWidgetState extends State<ClipPathWidget> {
  Color bgColor = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'ClipPath Widget',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: <Widget>[IconButton(icon: Icon(Icons.code), onPressed: () {})],
      ),
      body: Center(
        child: ClipPath(
          ///specify the clipper with path details here
          clipper: DashClipper(),

          ///specify the view to be clipped here
          child: GestureDetector(
            child: BlueBox(200.0, bgColor),
            onTap: () {
              setState(() {
                bgColor = Utils.getRandomColor();
              });
            },
          ),
        ),
      ),
    );
  }
}

class BlueBox extends StatelessWidget {
  final size;
  final bgColor;

  BlueBox(this.size, this.bgColor);

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(color: bgColor),
      child: SizedBox(
        height: size,
        width: size,
      ),
    );
  }
}

///Code from the official documents
class DashClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var controlPoint1 = Offset(50, size.height - 100);
    var controlPoint2 = Offset(size.width - 50, size.height);
    var endPoint = Offset(size.width, size.height - 50);

    Path path = Path()
      ..moveTo(size.width / 2, 0)
      ..lineTo(0, size.height - 50)
      ..cubicTo(controlPoint1.dx, controlPoint1.dy, controlPoint2.dx,
          controlPoint2.dy, endPoint.dx, endPoint.dy)
      ..close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
