import 'package:flutter/material.dart';

class SelectableTextWidget extends StatefulWidget {
  @override
  _SelectableTextWidgetState createState() => _SelectableTextWidgetState();
}

class _SelectableTextWidgetState extends State<SelectableTextWidget> {
  Color bgColor = Colors.blue;

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
          'SelectableText Widget',
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
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(left: 24.0, right: 24.0, top: 24.0),
              child: FlutterLogo(
                size: 100,
                colors: bgColor,
              ),
            ),

            /// Selectable text
            Container(
              margin: EdgeInsets.all(24.0),
              child: SelectableText(
                "Long press to select this text.\nYou can tap the text to change the color of Flutter Logo above.",
                style: TextStyle(
                  fontSize: 14.0,
                ),
                textAlign: TextAlign.center,
                onTap: () => setState(() {
                  bgColor = bgColor == Colors.blue ? Colors.amber : Colors.blue;
                }),
              ),
            ),

            /// A text field to let user paste the copied text
            Container(
              decoration: BoxDecoration(
                color: Colors.blue[300],
                borderRadius: BorderRadius.all(Radius.circular(32)),
              ),
              margin: EdgeInsets.only(left: 24.0, right: 24.0),
              child: TextField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  hintStyle: TextStyle(fontSize: 14, color: Colors.grey[100]),
                  hintText: 'Copy the text above and paste it here.',
                  prefixIcon: Icon(
                    Icons.content_paste,
                    color: Colors.white,
                  ),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.all(20),
                ),
                cursorColor: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
