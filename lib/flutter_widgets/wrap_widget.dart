import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WrapWidget extends StatefulWidget {
  @override
  _WrapWidgetState createState() => _WrapWidgetState();
}

class _WrapWidgetState extends State<WrapWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Wrap Widget',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Column(
              children: <Widget>[
                TextField()
              ],
            ),
            Wrap(
              direction: Axis.horizontal,
              alignment: WrapAlignment.start,
              spacing: 0.0, // gap between adjace// nt chips
              runSpacing: 0.0, // gap between lines
              children: <Widget>[
                chipDesign("Food", Color(0xFF4fc3f7)),
                chipDesign("Lifestyle", Color(0xFFffb74d)),
                chipDesign("Health", Color(0xFFff8a65)),
                chipDesign("Sports", Color(0xFF9575cd)),
                chipDesign("Nature", Color(0xFF4db6ac)),
                chipDesign("Fashion", Color(0xFFf06292)),
                chipDesign("Heritage", Color(0xFFa1887f)),
                chipDesign("City Life", Color(0xFF90a4ae)),
                chipDesign("Entertainment", Color(0xFFba68c8)),
                chipDesign("Fashion", Color(0xFFf06292)),
                chipDesign("Heritage", Color(0xFFa1887f)),
                chipDesign("City Life", Color(0xFF90a4ae)),
                chipDesign("Entertainment", Color(0xFFba68c8)),
                chipDesign("Food", Color(0xFF4fc3f7)),
                chipDesign("Lifestyle", Color(0xFFffb74d)),
                chipDesign("Health", Color(0xFFff8a65)),
                chipDesign("Sports", Color(0xFF9575cd)),
                chipDesign("Nature", Color(0xFF4db6ac)),
                chipDesign("Fashion", Color(0xFFf06292)),
                chipDesign("Heritage", Color(0xFFa1887f)),
                chipDesign("City Life", Color(0xFF90a4ae)),
                chipDesign("Entertainment", Color(0xFFba68c8)),
                chipDesign("Fashion", Color(0xFFf06292)),
                chipDesign("Heritage", Color(0xFFa1887f)),
                chipDesign("City Life", Color(0xFF90a4ae)),
                chipDesign("Entertainment", Color(0xFFba68c8)),
                chipDesign("Food", Color(0xFF4fc3f7)),
                chipDesign("Lifestyle", Color(0xFFffb74d)),
                chipDesign("Health", Color(0xFFff8a65)),
                chipDesign("Sports", Color(0xFF9575cd)),
                chipDesign("Nature", Color(0xFF4db6ac)),
                chipDesign("Fashion", Color(0xFFf06292)),
                chipDesign("Heritage", Color(0xFFa1887f)),
                chipDesign("City Life", Color(0xFF90a4ae)),
                chipDesign("Entertainment", Color(0xFFba68c8)),
                chipDesign("Fashion", Color(0xFFf06292)),
                chipDesign("Heritage", Color(0xFFa1887f)),
                chipDesign("City Life", Color(0xFF90a4ae)),
                chipDesign("Entertainment", Color(0xFFba68c8)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Widget chipDesign(String label, Color color) => Container(
  child: Chip(
    label: Text(
      label,
      style: TextStyle(
        color: Colors.white,
      ),
    ),
    backgroundColor: color,
    elevation: 4,
    shadowColor: Colors.grey[50],
    padding: EdgeInsets.all(4),
  ),
  margin: EdgeInsets.only(left: 12, right: 12, top: 2, bottom: 2),
);

///Method to create a divider with added margin
Container divider(BuildContext context) => Container(
  child: Divider(),
  margin: EdgeInsets.only(left: 10, right: 10, top: 28, bottom: 28),
);
