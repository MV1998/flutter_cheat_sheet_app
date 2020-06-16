import 'package:flutter/material.dart';

class ExpandedWidget extends StatefulWidget {
  @override
  _ExpandedWidgetState createState() => _ExpandedWidgetState();
}

class _ExpandedWidgetState extends State<ExpandedWidget> {
  ///Flex factor for 1st widget
  int _flexFactor0 = 1;

  ///Flex factor for 2nd widget
  int _flexFactor1 = 2;

  ///Flex factor for 3rd widget
  int _flexFactor2 = 1;

  @override
  void setState(fn) {
    super.setState(fn);
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Text(
          'Expanded Widget',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.info_outline,
              color: Theme.of(context).backgroundColor,
            ),
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      contentPadding: EdgeInsets.all(10),
                      titlePadding: EdgeInsets.only(top: 28),
                      title: Center(
                        child: Column(
                          children: <Widget>[
                            Text(
                              "Description",
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            FlatButton(
                              onPressed: () {},
                              splashColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              // makes highlight invisible too
                              child: Text('(Source Code)',
                                  style: TextStyle(
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w300,
                                      color: Colors.cyan)),
                            ),
                          ],
                        ),
                      ),
                      content: Container(
                        padding: EdgeInsets.all(0),
                        margin: EdgeInsets.all(0),
                        child: Image(
                          image: NetworkImage('https://picsum.photos/seed/picsum/200/300'),
                        ),
                      ),
                    );
                  });
            },
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.code, color: Colors.white,),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              color: Color(0xcde0f0e0),
              child: Row(
                children: <Widget>[
                  ///First flexible widget
                  Expanded(
                    flex: _flexFactor0,
                    child: FittedBox(
                      fit: BoxFit.contain,
                      child: GestureDetector(
                        child: Container(
                          child: Center(
                            child: Text(
                              '$_flexFactor0',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          margin: const EdgeInsets.all(10.0),
                          color: const Color(0xFF2196f3),
                          width: 48.0,
                          height: 48.0,
                        ),
                        onTap: () => setState(() {
                          _flexFactor0++;
                        }),
                      ),
                    ),
                  ),

                  ///Second flexible widget
                  Expanded(
                    flex: _flexFactor1,
                    child: FittedBox(
                      fit: BoxFit.contain,
                      child: GestureDetector(
                        child: Container(
                          child: Center(
                            child: Text(
                              '$_flexFactor1',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          margin: const EdgeInsets.all(10.0),
                          color: Colors.red,
                          width: 48.0,
                          height: 48.0,
                        ),
                        onTap: () => setState(() {
                          _flexFactor1++;
                        }),
                      ),
                    ),
                  ),

                  ///Third flexible widget
                  Expanded(
                    flex: _flexFactor2,
                    child: FittedBox(
                      fit: BoxFit.contain,
                      child: GestureDetector(
                        child: Container(
                          child: Center(
                            child: Text(
                              '$_flexFactor2',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          margin: const EdgeInsets.all(10.0),
                          color: const Color(0xFF009688),
                          width: 48.0,
                          height: 48.0,
                        ),
                        onTap: () => setState(() {
                          _flexFactor2++;
                        }),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(16.0),
              child: RaisedButton(
                textColor: Colors.white,
                color: Colors.red,
                onPressed: () => setState(() {
                  _flexFactor0 = 1;
                  _flexFactor1 = 2;
                  _flexFactor2 = 1;
                }),
                child: Text('RESET'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  void didUpdateWidget(ExpandedWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
  }
}
