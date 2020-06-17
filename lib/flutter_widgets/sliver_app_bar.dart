import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SliverAppBarWidget extends StatefulWidget {
  @override
  _SliverAppBarWidgetState createState() => _SliverAppBarWidgetState();
}

class _SliverAppBarWidgetState extends State<SliverAppBarWidget> {
  ScrollController _controller;

  @override
  void initState() {
    super.initState();
    _controller = ScrollController(initialScrollOffset: 1.0);

    _controller.addListener(() {
      print('scrolling');
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          controller: _controller,
          slivers: <Widget>[
            SliverAppBar(
              actions: <Widget>[
                IconButton(
                  icon: Icon(Icons.code),
                  onPressed: () {},
                )
              ],
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                title: Text(
                  "SliverAppBar Widget",
                  style: TextStyle(
                    color: Theme.of(context).backgroundColor,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                background: Container(
                  color: Colors.lightBlue,
                ),
              ),
              backgroundColor: Theme.of(context).primaryColor,
              pinned: true,
              expandedHeight: 200,
              floating: false,
            ),
            SliverGrid(

              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4
              ),
              delegate: SliverChildBuilderDelegate(
                    (context, index) {
                  return listItem('Sliver List Item $index', context);
                },
                childCount: 100,
              ),
            )
//            SliverFixedExtentList(
//              itemExtent: 50.0,
//              delegate: SliverChildListDelegate(
//                [
//                  listItem("List item 1", context),
//                  listItem("List item 2", context),
//                  listItem("List item 3", context),
//                  listItem("List item 4", context),
//                  listItem("List item 5", context),
//                  listItem("List item 6", context),
//                  listItem("List item 7", context),
//                  listItem("List item 8", context),
//                  listItem("List item 9", context),
//                  listItem("List item 10", context),
//                  listItem("List item 11", context),
//                  listItem("List item 12", context),
//                  listItem("List item 13", context),
//                  listItem("List item 14", context),
//                  listItem("List item 15", context),
//                ],
//              ),
//            ),
//            SliverList(
//              delegate: SliverChildListDelegate(<Widget>[
//                ListTile(
//                  title: Text('Hello'),
//                ),
//                ListTile(
//                  title: Text('Hello'),
//                ),
//                ListTile(
//                  title: Text('Hello'),
//                ),
//                ListTile(
//                  title: Text('Hello'),
//                ),
//                ListTile(
//                  title: Text('Hello'),
//                ),
//                ListTile(
//                  title: Text('Hello'),
//                ),
//                ListTile(
//                  title: Text('Hello'),
//                ),
//                ListTile(
//                  title: Text('Hello'),
//                ),
//                ListTile(
//                  title: Text('Hello'),
//                ),
//                ListTile(
//                  title: Text('Hello'),
//                ),
//                ListTile(
//                  title: Text('Hello'),
//                ),
//                ListTile(
//                  title: Text('Hello'),
//                ),
//                ListTile(
//                  title: Text('Hello'),
//                ),
//                ListTile(
//                  title: Text('Hello'),
//                ),
//                ListTile(
//                  title: Text('Hello'),
//                ),
//              ]),
//            )
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}

Widget listItem(String title, BuildContext context) => GestureDetector(
  onTap: () {
    print('$title');
  },
  child:   Container(
    decoration: BoxDecoration(
      border: Border(
        top: BorderSide(
          color: Theme.of(context).backgroundColor,
          width: 1.0,
        ),
      ),
    ),
    child: Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.all(5),
        child: Text(
          "$title",
          textAlign: TextAlign.start,
          style: TextStyle(
            color: Theme.of(context).backgroundColor,
            fontSize: 14.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ),
  ),
);
