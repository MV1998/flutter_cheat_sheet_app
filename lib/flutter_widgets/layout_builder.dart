import 'package:flutter/material.dart';

class LayoutBuilderWidget extends StatefulWidget {
  @override
  _LayoutBuilderWidgetState createState() => _LayoutBuilderWidgetState();
}

class _LayoutBuilderWidgetState extends State<LayoutBuilderWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Layout Builder Widget'),
      ),
      body: Center(
        child: LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth < 600){
              return Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: Container(color: Colors.lightBlue),
                    flex: 1,
                  ),
                  Expanded(
                    child: Container(color: Colors.indigo),
                    flex: 1,
                  )
                ],
              );
            }else {
              return Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: Container(color: Colors.lightBlue),
                    flex: 1,
                  ),
                  Expanded(
                    child: Container(color: Colors.indigo),
                    flex: 1,
                  ),
                  Expanded(
                    child: Container(color: Colors.pink),
                    flex: 1,
                  ),
                  Expanded(
                    child: Container(color: Colors.blue),
                    flex: 1,
                  )
                ],
              );
            }
          },
        ),
      ),
    );
  }
}
