import 'package:flutter/material.dart';

class MediaQueryWidget extends StatefulWidget {
  @override
  _MediaQueryWidgetState createState() => _MediaQueryWidgetState();
}

class _MediaQueryWidgetState extends State<MediaQueryWidget> {
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
            'MediaQuery Widget',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: <Widget>[
            IconButton(icon: Icon(Icons.code), onPressed: () {})
          ],
        ),
        body: MediaQuery.of(context).orientation == Orientation.portrait
            ? singleColumnLayout(context)
            : doubleColumnLayout(context));
  }
}

Widget singleColumnLayout(BuildContext context) => Center(
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    mainAxisSize: MainAxisSize.max,
    children: <Widget>[
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          "My device info - ",
          style: TextStyle(
            fontSize: 24.0,
            color: Theme.of(context).backgroundColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          "Height: ${MediaQuery.of(context).size.height}",
          style: TextStyle(
            fontSize: 14.0,
            color: Theme.of(context).backgroundColor,
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          "Width: ${MediaQuery.of(context).size.width}",
          style: TextStyle(
            fontSize: 14.0,
            color: Theme.of(context).backgroundColor,
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          "Orientation: ${MediaQuery.of(context).orientation}",
          style: TextStyle(
            fontSize: 14.0,
            color: Theme.of(context).backgroundColor,
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          "Brightness: ${MediaQuery.of(context).platformBrightness}",
          style: TextStyle(
            fontSize: 14.0,
            color: Theme.of(context).backgroundColor,
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          "System Padding: ${MediaQuery.of(context).padding}",
          style: TextStyle(
            fontSize: 14.0,
            color: Theme.of(context).backgroundColor,
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          "Device Pixel Ratio: ${MediaQuery.of(context).devicePixelRatio}",
          style: TextStyle(
            fontSize: 14.0,
            color: Theme.of(context).backgroundColor,
          ),
        ),
      ),
    ],
  ),
);

Widget doubleColumnLayout(BuildContext context) => Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  mainAxisSize: MainAxisSize.max,
  children: <Widget>[
    Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          "My device info - ",
          style: TextStyle(
            fontSize: 24.0,
            color: Theme.of(context).backgroundColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ),
    Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Height: ${MediaQuery.of(context).size.height}",
            style: TextStyle(
              fontSize: 14.0,
              color: Theme.of(context).backgroundColor,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Width: ${MediaQuery.of(context).size.width}",
            style: TextStyle(
              fontSize: 14.0,
              color: Theme.of(context).backgroundColor,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Orientation: ${MediaQuery.of(context).orientation}",
            style: TextStyle(
              fontSize: 14.0,
              color: Theme.of(context).backgroundColor,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Brightness: ${MediaQuery.of(context).platformBrightness}",
            style: TextStyle(
              fontSize: 14.0,
              color: Theme.of(context).backgroundColor,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "System Padding: ${MediaQuery.of(context).padding}",
            style: TextStyle(
              fontSize: 14.0,
              color: Theme.of(context).backgroundColor,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Device Pixel Ratio: ${MediaQuery.of(context).devicePixelRatio}",
            style: TextStyle(
              fontSize: 14.0,
              color: Theme.of(context).backgroundColor,
            ),
          ),
        ),
      ],
    )
  ],
);
