import 'package:flutter/material.dart';

class PlaceHolderWidget extends StatefulWidget {
  @override
  _PlaceholderWidgetState createState() => _PlaceholderWidgetState();
}

class _PlaceholderWidgetState extends State<PlaceHolderWidget> {
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
          'Placeholder Widget',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: <Widget>[IconButton(icon: Icon(Icons.code), onPressed: () {})],
      ),
      body: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              /// Placeholder for cover image of the user
              Center(
                child: Placeholder(
                  fallbackHeight: 250,
                  color: Colors.black,
                  strokeWidth: 5,
                ),
              ),
              Center(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    /// Placeholder for user DP
                    SizedBox(
                      width: 100,
                      height: 100,
                      child: Placeholder(
                        color: Colors.amber,
                        strokeWidth: 2,
                      ),
                    ),

                    /// Placeholder for user bio
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        height: 50,
                        width: 250,
                        child: Placeholder(
                          color: Colors.red,
                          strokeWidth: 2,
                        ),
                      ),
                    ),

                    /// Placeholder for user social media links
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          SizedBox(
                            height: 30,
                            width: 30,
                            child: Placeholder(
                              color: Colors.green,
                              strokeWidth: 2,
                            ),
                          ),
                          SizedBox(
                            height: 30,
                            width: 30,
                            child: Placeholder(
                              color: Colors.green,
                              strokeWidth: 2,
                            ),
                          ),
                          SizedBox(
                            height: 30,
                            width: 30,
                            child: Placeholder(
                              color: Colors.green,
                              strokeWidth: 2,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
