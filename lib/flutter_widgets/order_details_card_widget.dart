import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttercheatsheetapp/utils.dart';
import 'package:url_launcher/url_launcher.dart';

class OrderDetailsCardWidget extends StatefulWidget {
  @override
  _OrderDetailsCardWidgetState createState() => _OrderDetailsCardWidgetState();
}

class _OrderDetailsCardWidgetState extends State<OrderDetailsCardWidget> {
  var count = 0;
  Color color = Colors.yellow;

  Color callCustomerButtonColor = Colors.deepOrange;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text('Animated Switcher'),
      ),
      body: AnimatedSwitcher(
          duration: Duration(seconds: 10),
          child: ListView.separated(
            separatorBuilder: (context, index) {
              return Divider(
                thickness: 1,
                height: 5,
                color: Colors.grey,
              );
            },
            primary: true,
            itemCount: 5,
            itemBuilder: (context, index) {
              return OrderDetailsCard();
            },
          )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            count++;
            color = Utils.getRandomColor();
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

class OrderDetailsCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: Border(),
      elevation: 3,
      color: Colors.white,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.only(left: 4, right: 4),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Date : 19/06/2020',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                Text(
                  'Total: ₹180',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.deepOrange),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 3,
          ),
          Padding(
            padding: EdgeInsets.only(left: 5),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Mohit',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                    color: Colors.deepOrange),
              ),
            ),
          ),
          SizedBox(
            height: 2,
          ),
          ItemFutureList(),
          Divider(
            color: Colors.grey,
            thickness: 0.5,
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    launch('tel: 8602421385');
                  },
                  child: Container(
                    padding:
                        EdgeInsets.only(top: 8, bottom: 8, left: 5, right: 5),
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.deepOrange,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(10)),
                    child: Text(
                      'Call Customer',
                      style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          color: Colors.deepOrange),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    padding:
                        EdgeInsets.only(top: 8, bottom: 8, left: 5, right: 5),
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.deepOrange,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(10)),
                    child: Text(
                      'View Details',
                      style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          color: Colors.deepOrange),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    padding:
                        EdgeInsets.only(top: 8, bottom: 8, left: 5, right: 5),
                    decoration: BoxDecoration(
                        color: Colors.red,
                        border: Border.all(
                          color: Colors.red,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(10)),
                    child: Text(
                      'Cancel Order',
                      style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    padding:
                        EdgeInsets.only(top: 8, bottom: 8, left: 5, right: 5),
                    decoration: BoxDecoration(
                        color: Colors.green,
                        border: Border.all(
                          color: Colors.green,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(10)),
                    child: Text(
                      'Accept Order',
                      style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ItemFutureList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List>(
      future: getData(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return ListView.builder(
            physics: ClampingScrollPhysics(),
            itemCount: snapshot.data.length,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Divider(
                    color: Colors.grey,
                    thickness: 0.5,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 5),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        '${snapshot.data[index]}',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                  ),
                ],
              );
            },
          );
        }
        return Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}

Future<List> getData() async {
  final list = Future.value(List.generate(5, (index) => 'Item List $index'));
  return list;
}
