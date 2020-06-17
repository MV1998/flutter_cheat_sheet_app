import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttercheatsheetapp/flutter_widgets/fade_in_image.dart';
import 'package:fluttercheatsheetapp/flutter_widgets/stream_builder.dart';
import 'package:fluttercheatsheetapp/flutter_widgets/table.dart';
import 'package:signature/signature.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final SignatureController _controller = SignatureController(
    penStrokeWidth: 5,
    penColor: Colors.red,
    exportBackgroundColor: Colors.blue,
  );

  @override
  void initState() {
    super.initState();
    _controller.addListener(() => print("Value changed"));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Widget',
      home: StreamBuilderWidget(),
    );
  }
}

