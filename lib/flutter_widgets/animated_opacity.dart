import 'package:flutter/material.dart';

class AnimatedOpacityWidget extends StatefulWidget {
  @override
  _AnimatedOpacityWidgetState createState() => _AnimatedOpacityWidgetState();
}

class _AnimatedOpacityWidgetState extends State<AnimatedOpacityWidget> {
  double opacityLevel = 1.0;
  String buttonText = "Fade Out";

  @override
  void initState() {
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'AnimatedOpacity Widget',
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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 100,
              width: 100,
              child: AnimatedOpacity(
                opacity: opacityLevel,
                duration: Duration(seconds: 1),
                child: FlutterLogo(),
              ),
            ),
            Container(
              margin: EdgeInsets.all(24),
              child: Text("Opacity Value - ${opacityLevel.toString()}"),
            ),
            Container(
              child: RaisedButton(
                color: Theme.of(context).backgroundColor,
                child: Text(
                  buttonText,
                  style: TextStyle(color: Theme.of(context).primaryColor),
                ),
                onPressed: _changeOpacity,
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _changeOpacity() {
    setState(() {
      opacityLevel = opacityLevel == 0 ? 1.0 : 0.0;
      buttonText = buttonText == "Fade Out" ? "Fade In" : "Fade Out";
    });
  }
}
