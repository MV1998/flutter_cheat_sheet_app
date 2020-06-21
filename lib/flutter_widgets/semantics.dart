import 'package:flutter/material.dart';

class SemanticsWidget extends StatefulWidget {
  @override
  _SemanticsWidgetState createState() => _SemanticsWidgetState();
}

class _SemanticsWidgetState extends State<SemanticsWidget> {
  @override
  Widget build(BuildContext context) {
    return Semantics(
        child: Container(
          height: 100,
          width: 100,
          color: Colors.deepOrange,
        ),
      container: true,
      label: 'A Simple Container with Deep Orange Color.',
    );
  }
}
