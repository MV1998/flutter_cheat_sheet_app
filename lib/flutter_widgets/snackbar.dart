import 'package:flutter/material.dart';


class SnackBarWidget extends StatefulWidget {
  @override
  _SnackBarWidgetState createState() => _SnackBarWidgetState();
}

class _SnackBarWidgetState extends State<SnackBarWidget> {
  GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey(debugLabel: 'state');

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'SnackBar Widget',
          style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.code),
            onPressed: () {

            }
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RaisedButton(
                child: Text('Show simple SnackBar'),
                color: Theme.of(context).backgroundColor,
                textColor: Theme.of(context).accentColor,
                onPressed: () => _scaffoldKey.currentState.showSnackBar(
                  SnackBar(
                    duration: Duration(milliseconds: 500),
                    content: Text("Simple SnackBar"),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RaisedButton(
                child: Text('Show elevated SnackBar'),
                color: Theme.of(context).backgroundColor,
                textColor: Theme.of(context).accentColor,
                onPressed: () => _scaffoldKey.currentState.showSnackBar(
                  SnackBar(
                    duration: Duration(milliseconds: 500),
                    elevation: 6.0,
                    behavior: SnackBarBehavior.floating,
                    content: Text("Elevated SnackBar"),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RaisedButton(
                child: Text('Show custom layout SnackBar'),
                color: Theme.of(context).backgroundColor,
                textColor: Theme.of(context).accentColor,
                onPressed: () => _scaffoldKey.currentState.showSnackBar(
                  SnackBar(
                    backgroundColor: Colors.cyanAccent,
                    duration: Duration(milliseconds: 500),
                    elevation: 6.0,
                    behavior: SnackBarBehavior.floating,
                    content: Row(
                      children: <Widget>[
                        Icon(Icons.thumb_up),
                        SizedBox(width: 20.0),
                        Expanded(
                          child: Text("Hello!"),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}