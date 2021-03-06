import 'package:flutter/material.dart';

class TabsWidget extends StatefulWidget {
  @override
  _TabsWidgetState createState() => _TabsWidgetState();
}

class _TabsWidgetState extends State<TabsWidget> {
  final List<Tab> myTabs = <Tab>[
    Tab(text: "Tab 1", icon: Icon(Icons.looks_one)),
    Tab(text: "Tab 2", icon: Icon(Icons.looks_two)),
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    //Wrap everything in DefaultTabController
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Tabs Widget',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: <Widget>[
            IconButton(icon: Icon(Icons.code), onPressed: () {})
          ],
          //Specify the tabs for your view
          bottom: TabBar(
            tabs: myTabs,
            indicatorColor: Theme.of(context).backgroundColor,
          ),
        ),
        body: TabBarView(
          children: myTabs.map((Tab tab) {
            return Center(
              child: Text(
                'This is the ${tab.text}',
                style: const TextStyle(fontSize: 16),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
