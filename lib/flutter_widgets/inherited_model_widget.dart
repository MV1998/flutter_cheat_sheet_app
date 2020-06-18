import 'package:flutter/material.dart';

import 'package:fluttercheatsheetapp/utils.dart';

class InheritedModelWidget extends StatefulWidget {
  @override
  _InheritedModelWidgetState createState() => _InheritedModelWidgetState();
}

class _InheritedModelWidgetState extends State<InheritedModelWidget> {
  Color _colorOne = Utils.getRandomColor();

  Color _colorTwo = Utils.getRandomColor();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inherited Model'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: 12),
        child: Column(
          children: <Widget>[
            Container(
              child: AncestorWidget(
                  _colorOne,
                  _colorTwo,
                  Container(
                    color: Colors.black,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        DependentWidgetOne(COLOR_ASPECT.ONE),
                        DependentWidgetTwo(COLOR_ASPECT.TWO)
                      ],
                    ),
                  )),
            ),
            Container(
              margin: EdgeInsets.all(12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.all(16.0),
                    child: RaisedButton(
                      textColor: Theme.of(context).primaryColor,
                      color: Theme.of(context).backgroundColor,
                      onPressed: () => setState(() {
                        _colorOne = Utils.getRandomColor();
                      }),
                      child: Text('RESET Child 1'),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(16.0),
                    child: RaisedButton(
                      textColor: Theme.of(context).primaryColor,
                      color: Theme.of(context).backgroundColor,
                      onPressed: () => setState(() {
                        _colorTwo = Utils.getRandomColor();
                      }),
                      child: Text('RESET Child 2'),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}


class AncestorWidget extends InheritedModel<COLOR_ASPECT>{

  final Color colorOne;
  final Color colorTwo;

  @override
  bool updateShouldNotify(AncestorWidget oldWidget) {
    print("First updateShouldNotify is checked ${colorOne != oldWidget.colorOne || colorTwo != oldWidget.colorTwo}");
    return colorOne != oldWidget.colorOne || colorTwo != oldWidget.colorTwo;
  }

  @override
  bool updateShouldNotifyDependent(
      AncestorWidget oldWidget, Set<COLOR_ASPECT> aspects) {
    if (aspects.contains(COLOR_ASPECT.ONE) && colorOne != oldWidget.colorOne) {
      print("Only widget one is rebuild new value -> $colorOne old value ->${oldWidget.colorOne}");
      return true;
    }
    if (aspects.contains(COLOR_ASPECT.TWO) && colorTwo != oldWidget.colorTwo) {
      print("Only widget two is rebuild new value -> $colorTwo old value -> ${oldWidget.colorTwo}");
      return true;
    }
    return false;
  }

  AncestorWidget(this.colorOne, this.colorTwo, Widget child) : super(child: child);

  static AncestorWidget of(BuildContext context, COLOR_ASPECT aspect) {
    return InheritedModel.inheritFrom<AncestorWidget>(context, aspect: aspect);
  }
}

class DependentWidgetOne extends StatelessWidget {

  final COLOR_ASPECT type;

  DependentWidgetOne(this.type);

  @override
  Widget build(BuildContext context) {
    ///Supplying an aspect to indicate which of the ancestor's field this widget cares about
    ///Widgets create a dependency on an [InheritedModel] with a static method
    final ancestor = AncestorWidget.of(context, type);
    return Container(
      color: ancestor.colorOne,
      height: 150,
      width: 200,
      child: Center(
        child: Text(
          "Dependent Child 1",
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.white,
              fontSize: 14.0,
              fontWeight: FontWeight.bold,),
        ),
      ),
    );
  }
}


class DependentWidgetTwo extends StatelessWidget {

  final COLOR_ASPECT type;

  DependentWidgetTwo(this.type);

  @override
  Widget build(BuildContext context) {
    ///Supplying an aspect to indicate which of the ancestor's field this widget cares about
    ///Widgets create a dependency on an [InheritedModel] with a static method
    final ancestor = AncestorWidget.of(context, type);
    return Container(
      color: ancestor.colorTwo,
      height: 150,
      width: 200,
      child: Center(
        child: Text(
          "Dependent Child 2",
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.white,
              fontSize: 14.0,
              fontWeight: FontWeight.bold,),
        ),
      ),
    );
  }
}

enum COLOR_ASPECT {
  ONE,
  TWO
}
