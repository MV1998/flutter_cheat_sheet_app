import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class PageViewWidget extends StatefulWidget {
  @override
  _PageViewWidgetState createState() => _PageViewWidgetState();
}

class _PageViewWidgetState extends State<PageViewWidget> {
  PageController _pageController;
  int pageValue;
  Axis _scrollDirection;

  @override
  void initState() {
    super.initState();
    _scrollDirection = Axis.horizontal;
    _pageController = PageController(initialPage: 4);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PageView'),
      ),
      body: Column(
        children: <Widget>[
          FittedBox(
            child: RaisedButton(
              onPressed: () {
                setState(() {
                  _scrollDirection = Axis.vertical;
                });
              },
              child: Text('vertical'),
            ),
          ),
          FittedBox(
            child: RaisedButton(
              onPressed: () {
                setState(() {
                  _scrollDirection = Axis.horizontal;
                });
              },
              child: Text('horizontal'),
            ),
          ),
          Expanded(
            child: Stack(
              children: <Widget>[
                PageView(
                  physics: BouncingScrollPhysics(),
                  pageSnapping: true,
                  controller: _pageController,
                  scrollDirection: _scrollDirection,
                  onPageChanged: (value) {
                    setState(() {
                      pageValue = value;
                    });
                  },
                  children: <Widget>[
                    Container(
                        height: 500,
                        width: 300,
                        color: Colors.red,
                        child: FlutterLogo(
                          size: 200,
                        )
                    ),
                    Container(
                      height: 500,
                      width: 300,
                      color: Colors.lightGreen,
                      child: Image(
                        image: NetworkImage('https://picsum.photos/200/300?grayscale'),
                      ),
                    ),
                    Container(
                      height: 500,
                      width: 300,
                      color: Colors.lightGreenAccent,
                      child: Image(
                        image: NetworkImage('https://picsum.photos/200/300?grayscale'),
                      ),
                    ),
                    Container(
                      height: 500,
                      width: 300,
                      color: Colors.indigoAccent,
                      child: Image(
                        image: NetworkImage('https://picsum.photos/200/300?grayscale'),
                      ),
                    ),
                  ],
                ),
                Align(
                  alignment: AlignmentDirectional.bottomCenter,
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          '1',
                          style: TextStyle(
                              color: pageValue == 0 ? Colors.black : Colors.white,
                              fontSize: 30),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          '2',
                          style: TextStyle(
                              color: pageValue == 1 ? Colors.black : Colors.white,
                              fontSize: 30),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          '3',
                          style: TextStyle(
                              color: pageValue == 2 ? Colors.black : Colors.white,
                              fontSize: 30),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          '4',
                          style: TextStyle(
                              color: pageValue == 3 ? Colors.black : Colors.white,
                              fontSize: 30),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
