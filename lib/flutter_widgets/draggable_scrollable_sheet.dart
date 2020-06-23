import 'package:flutter/material.dart';

class DraggableScrollableSheetWidget extends StatefulWidget {
  @override
  _DraggableScrollableSheetWidgetState createState() =>
      _DraggableScrollableSheetWidgetState();
}

class _DraggableScrollableSheetWidgetState
    extends State<DraggableScrollableSheetWidget> {
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
          'DraggableScrollableSheet Widget',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: <Widget>[IconButton(icon: Icon(Icons.code), onPressed: () {})],
      ),
      body: Stack(
        children: <Widget>[
          Container(
            color: Colors.black87,
            child: Center(
              child: Text(
                "Swipe up from the bottom to drag scrollable sheet",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 1.0, right: 1.0),
            child: DraggableScrollableSheet(
              maxChildSize: 1.0,
              initialChildSize: 0.4,
              minChildSize: 0.2,
              expand: true,
              builder: (context, scrollController) {
                return Container(
                  child: ListView.builder(
                    controller: scrollController,
                    itemCount: 25,
                    itemBuilder: (BuildContext context, int index) {
                      return ListTile(
                        title: Text(
                          'Item $index',
                          style: TextStyle(
                              color: Theme.of(context).backgroundColor),
                        ),
                      );
                    },
                  ),
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Theme.of(context).primaryColor,

                    /// To set a shadow behind the parent container
                    boxShadow: [
                      BoxShadow(
                        color: Colors.white,
                        offset: Offset(0.0, -2.0),
                        blurRadius: 4.0,
                      ),
                    ],

                    /// To set radius of top left and top right
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24.0),
                      topRight: Radius.circular(24.0),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
