import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TableWidget extends StatefulWidget {
  @override
  _TableWidgetState createState() => _TableWidgetState();
}

class _TableWidgetState extends State<TableWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Table'),
      ),
      body: SingleChildScrollView(
        child: Table(
          defaultVerticalAlignment: TableCellVerticalAlignment.bottom,
          border: TableBorder.all(color: Colors.grey[300], width: 1),
          children: <TableRow>[
            TableRow(children: <Widget>[
              Padding(
                  padding: EdgeInsets.all(5),
                  child: Text(
                    'Hello',
                    textAlign: TextAlign.center,
                  )),
              Padding(
                  padding: EdgeInsets.all(5),
                  child: Text(
                    'Hello',
                    textAlign: TextAlign.center,
                  )),
              Padding(
                  padding: EdgeInsets.all(5),
                  child: Text(
                    'Hello',
                    textAlign: TextAlign.center,
                  )),
            ]),
            TableRow(children: <Widget>[
              Padding(
                  padding: EdgeInsets.all(5),
                  child: Text(
                    'Hello',
                    textAlign: TextAlign.center,
                  )),
              Padding(
                  padding: EdgeInsets.all(5),
                  child: Text(
                    'Hello',
                    textAlign: TextAlign.center,
                  )),
              Padding(
                  padding: EdgeInsets.all(5),
                  child: Text(
                    'Hello',
                    textAlign: TextAlign.center,
                  )),
            ]),
            TableRow(
              children: <Widget>[
                Padding(
                    padding: EdgeInsets.all(5),
                    child: Text(
                      'Hello',
                      textAlign: TextAlign.center,
                    )),
                Padding(
                    padding: EdgeInsets.all(5),
                    child: Text(
                      'Hello',
                      textAlign: TextAlign.center,
                    )),
                Padding(
                    padding: EdgeInsets.all(5),
                    child: Text(
                      'Hello',
                      textAlign: TextAlign.center,
                    )),
              ],
            ),
            TableRow(children: <Widget>[
              Padding(
                  padding: EdgeInsets.all(5),
                  child: Text(
                    'Hello',
                    textAlign: TextAlign.center,
                  )),
              Padding(
                  padding: EdgeInsets.all(5),
                  child: Text(
                    'Hello',
                    textAlign: TextAlign.center,
                  )),
              Padding(
                  padding: EdgeInsets.all(5),
                  child: Text(
                    'Hello',
                    textAlign: TextAlign.center,
                  )),
            ]),
            TableRow(children: <Widget>[
              Padding(
                  padding: EdgeInsets.all(5),
                  child: Text(
                    'Hello',
                    textAlign: TextAlign.center,
                  )),
              Padding(
                  padding: EdgeInsets.all(5),
                  child: Text(
                    'Hello',
                    textAlign: TextAlign.center,
                  )),
              Padding(
                  padding: EdgeInsets.all(5),
                  child: Text(
                    'Hello',
                    textAlign: TextAlign.center,
                  )),
            ]),
            TableRow(children: <Widget>[
              FittedBox(
                fit: BoxFit.contain,
                child: Container(
                  margin: EdgeInsets.all(2),
                  color: Colors.lightBlue,
                  width: 50.0,
                  height: 48.0,
                  child: Center(
                    child: Text(
                      "Row 2 \n Element 1",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 6.0,),
                    ),
                  ),
                ),
              ),
              FittedBox(
                fit: BoxFit.contain,
                child: Container(
                  margin: EdgeInsets.all(2),
                  color: Colors.green,
                  width: 48.0,
                  height: 48.0,
                  child: Center(
                    child: Text(
                      "Row 2 \n Element 2",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 6.0,),
                    ),
                  ),
                ),
              ),
              FittedBox(
                fit: BoxFit.contain,
                child: Container(
                  margin: EdgeInsets.all(2),
                  color: Colors.blue,
                  width: 50.0,
                  height: 100.0,
                  child: Center(
                    child: Text(
                      "Row 2 \n Element 3",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 6.0,),
                    ),
                  ),
                ),
              ),
            ]),
            TableRow(children: <Widget>[
              FittedBox(
                fit: BoxFit.contain,
                child: Container(
                  margin: EdgeInsets.all(2),
                  color: Colors.red,
                  width: 48.0,
                  height: 100.0,
                  child: Center(
                    child: Text(
                      "Row 1 \n Element 1",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 6.0,),
                    ),
                  ),
                ),
              ),
              FittedBox(
                fit: BoxFit.contain,
                child: Container(
                  margin: EdgeInsets.all(2),
                  color: Colors.orange,
                  width: 50.0,
                  height: 50.0,
                  child: Center(
                    child: Text(
                      "Row 1 \n Element 2",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 6.0,),
                    ),
                  ),
                ),
              ),
              FittedBox(
                fit: BoxFit.contain,
                child: Container(
                  margin: EdgeInsets.all(2),
                  color: Colors.blue,
                  width: 50.0,
                  height: 50.0,
                  child: Center(
                    child: Text(
                      "Row 1 \n Element 3",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 6.0,),
                    ),
                  ),
                ),
              ),
            ]),
          ],
        ),
      ),
    );
  }
}
