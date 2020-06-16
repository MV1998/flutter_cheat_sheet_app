import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttercheatsheetapp/flutter_widgets/fade_transition.dart';
import 'package:fluttercheatsheetapp/flutter_widgets/floating_action.dart';
import 'package:fluttercheatsheetapp/flutter_widgets/future_builder.dart';
import 'package:fluttercheatsheetapp/flutter_widgets/page_view.dart';
import 'package:fluttercheatsheetapp/flutter_widgets/table.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Cheat Sheet'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;

  MyHomePage({this.title});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return TableWidget();
  }
}
