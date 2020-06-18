import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class HeroWidget extends StatefulWidget {
  @override
  _HeroWidgetState createState() => _HeroWidgetState();
}

class _HeroWidgetState extends State<HeroWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hero'),
      ),
      body: WillPopScope(
        child: GestureDetector(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 12, right: 12, top: 8),
                child: Text(
                  'Click the Widget below to observe Hero animation in slow motion',
                  style: TextStyle(
                      color: Colors.grey[400],
                      fontSize: 14.0,
                      fontStyle: FontStyle.italic,),
                  textAlign: TextAlign.center,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Hero(
                    tag: "hero",
                    child: Container(
                      width: 100,
                      height: 100,
                      margin: EdgeInsets.all(12),
                      child: Stack(
                        children: <Widget>[
                          ClipRRect(
                            child: Container(
                              color: Colors.amber,
                            ),
                            borderRadius: BorderRadius.circular(100),
                            clipBehavior: Clip.antiAlias,
                          ),
                          Center(
                            child: Container(
                              margin: EdgeInsets.all(10),
                              width: 100,
                              height: 100,
                              child: FlutterLogo(
                                colors: Colors.lightBlue,
                                textColor: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
          onTap: () {
            Navigator.pushNamed(context, 'hero2');
            timeDilation = 4.0;
          },
        ),
        onWillPop: () {
          timeDilation = 1.0;
          return Future.value(true);
        },
      )
    );
  }
}



