import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ExampleWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Constraints Understand'),
      ),
      body: NewCardListView(),
    );
  }
}

class Example1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
    );
  }
}

class Example2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      color: Colors.blue,
    );
  }
}

class Example3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 100,
        width: 100,
        color: Colors.blue,
      ),
    );
  }
}

class Example4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        height: 100,
        width: 100,
        color: Colors.blue,
      ),
    );
  }
}

class Example5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.amber,
      ),
    );
  }
}

class Example6 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.indigo,
      ),
    );
  }
}

class Example7 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.all(20),
        color: Colors.red,
        child: Container(
          height: 30,
          width: 30,
          color: Colors.green,
        ),
      ),
    );
  }
}

class Example8 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
          minWidth: 20, maxWidth: 100, maxHeight: 200, minHeight: 100),
      child: Align(
        alignment: Alignment.center,
        child: Container(
          color: Colors.redAccent,
          height: 100,
          width: 30,
        ),
      ),
    );
  }
}

class Example9 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ConstrainedBox(
        constraints: BoxConstraints(
            minWidth: 20, maxWidth: 100, maxHeight: 200, minHeight: 100),
        child: Container(
          color: Colors.indigo,
        ),
      ),
    );
  }
}

class Example10 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return OverflowBox(
      alignment: Alignment.bottomCenter,
      minWidth: 0.0,
      minHeight: 0.0,
      maxHeight: double.infinity,
      maxWidth: double.infinity,
      child: Container(
        color: Colors.green,
        height: 100,
        width: 100,
      ),
    );
  }
}

class Example11 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return UnconstrainedBox(
      child: Container(
        color: Colors.red,
        width: 1000,
        height: 100,
      ),
    );
  }
}

class Example12 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return UnconstrainedBox(
      child: LimitedBox(
        maxWidth: 100,
        child: Container(
          color: Colors.grey,
          width: double.infinity,
          height: 100,
        ),
      ),
    );
  }
}

class Example13 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(
            'This is some very very very large text that is too big to fit a regular screen in a single line.'));
  }
}

class Example14 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Container(
        color: Colors.red,
        height: 100,
        width: double.infinity,
      ),
    );
  }
}

class Example15 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
          minHeight: 80, minWidth: 80, maxWidth: 300, maxHeight: 200),
      child: Align(
        alignment: Alignment.bottomRight,
        child: Container(
          color: Colors.green,
          padding: EdgeInsets.all(10),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Container(
                color: Colors.red,
                height: 100,
                width: 100,
              ),
              Container(
                color: Colors.blue,
                height: 100,
                width: 100,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Example16 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Container(
            color: Colors.blue,
            child: Text(
                'MohitMohitMohitMohitMohitMohitMohitMohitMohitMohitMohitMohitMohitMohitMohitMohitMohitMohitMohitMohitMohitMohitMohitMohitMohitMohitMohitMohitMohitMohitMohitMohit'),
          ),
        ),
        Container(
          color: Colors.red,
          child: Text('s'),
        )
      ],
    );
  }
}

class Example17 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Container(
            color: Colors.red,
            child: Text(
                'MohitMohitMohitMohitMohitMohitMohitMohitMohitMohitMohitMohitMohitMohitMohitMohitMohitMohitMohitMohitMohitMohitMohitMohitMohitMohitMohitMohitMohitMohitMohitMohitMohit'),
          ),
        ),
        Expanded(
          child: Container(
            color: Colors.blue,
            child: Text(
                'MohitMohitMohitMohitMohitMohitMohitMohitMohitMohitMohitMohitMohitMohitMohitMohitMohitMohit'),
          ),
        )
      ],
    );
  }
}

class Example18 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Flexible(
          child: Container(
            color: Colors.red,
            child: Text(
                'MohitMohitMohitMohitMohitMohitMohitMohitMohitMohitMohitMohitMohitMohitMohitMohitMohitMohitMohitMohitMohitMohitMohitMohitMohitMohitMohitMohitMohitMohitMohitMohitMohit'),
          ),
        ),
        Flexible(
          child: Container(
            color: Colors.blue,
            child: Text('Mohit'),
          ),
        )
      ],
    );
  }
}

class Example19 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.blue,
                border: Border.all(
                  color: Colors.black38,
                  width: 2,
                  style: BorderStyle.solid,
                ),
                borderRadius: BorderRadius.circular(10)),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text('Hello'),
                SizedBox(
                  height: 4,
                ),
                Text('Goodbye!'),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.blue,
                border: Border.all(
                  color: Colors.black38,
                  width: 2,
                  style: BorderStyle.solid,
                ),
                borderRadius: BorderRadius.circular(10)),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text('Hello'),
                SizedBox(
                  height: 4,
                ),
                Text('Goodbye!'),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.blue,
                border: Border.all(
                  color: Colors.black38,
                  width: 2,
                  style: BorderStyle.solid,
                ),
                borderRadius: BorderRadius.circular(10)),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text('Hello'),
                SizedBox(
                  height: 4,
                ),
                Text('Goodbye!'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Example20 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: Container(
        color: Colors.orange,
        child: Column(
          children: [
            Flexible(
                child: Text(
                    'HeHeHeHeHeHeHeHeHeHeHeHeHeHeHeHeHeHeHeHeHeHeHeHeHeHeHeHeHeHeHeHeHeHeHeHeHeHeHeHeHeHeHeHeHeHeHeHeHeHeHeHeHeHeHeHeHeHeHeHeHeHeHello!')),
            Flexible(
                child: Text(
                    'HeHeHeHeHeHeHeHeHeHeHeHeHeHeHeHeHeHeHeHeHeHeHeHeHeHeHeHeHeHeHeHeHeHeHeHeHeHeHeHeHeHeHeHeHeHeHeHeHeHeHeHeHeHeHeHeHeHeHeHeHeHeHello!')),
          ],
        ),
      ),
    );
  }
}

class Example21 extends StatelessWidget {
  final url;

  Example21({this.url});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(5),
      child: ConstrainedBox(
        constraints: BoxConstraints.loose(Size(
            MediaQuery.of(context).size.width,
            MediaQuery.of(context).size.height / 2)),
        child: Stack(
          children: <Widget>[
            SizedBox.expand(
              child: Container(
                child: Image.network(
                  url,
                  loadingBuilder: (BuildContext context, Widget child,
                      ImageChunkEvent loadingProgress) {
                    if (loadingProgress == null) {
                      return child;
                    }
                    return Center(
                      child: CircularProgressIndicator(
                        value: loadingProgress.expectedTotalBytes != null
                            ? loadingProgress.cumulativeBytesLoaded /
                                loadingProgress.expectedTotalBytes
                            : null,
                      ),
                    );
                  },
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              height: 50,
              width: MediaQuery.of(context).size.width,
              child: Container(
                color: Colors.deepOrange,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        'portrait',
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 22,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class LandScape extends StatelessWidget {
  final url;

  LandScape({this.url});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(5),
      child: ConstrainedBox(
        constraints: BoxConstraints.loose(Size(
            MediaQuery.of(context).size.width,
            MediaQuery.of(context).size.height)),
        child: Stack(
          children: <Widget>[
            SizedBox.expand(
              child: Container(
                child: Image.network(
                  url,
                  loadingBuilder: (BuildContext context, Widget child,
                      ImageChunkEvent loadingProgress) {
                    if (loadingProgress == null) {
                      return child;
                    }
                    return Center(
                      child: CircularProgressIndicator(
                        value: loadingProgress.expectedTotalBytes != null
                            ? loadingProgress.cumulativeBytesLoaded /
                                loadingProgress.expectedTotalBytes
                            : null,
                      ),
                    );
                  },
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              height: 50,
              width: MediaQuery.of(context).size.width,
              child: Container(
                color: Colors.deepOrange,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        'landscape',
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 22,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ListViewWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (context, orientation) {
        if (orientation == Orientation.portrait) {
          return ListView(
            children: <Widget>[
              Example21(
                  url:
                      'https://cdn.rawgit.com/akabab/superhero-api/0.2.0/api/images/lg/1-a-bomb.jpg'),
              Example21(
                url:
                    'https://cdn.rawgit.com/akabab/superhero-api/0.2.0/api/images/lg/2-abe-sapien.jpg',
              ),
              Example21(
                url:
                    'https://cdn.rawgit.com/akabab/superhero-api/0.2.0/api/images/lg/6-absorbing-man.jpg',
              ),
              Example21(
                  url:
                      'https://cdn.rawgit.com/akabab/superhero-api/0.2.0/api/images/lg/1-a-bomb.jpg'),
              Example21(
                url:
                    'https://cdn.rawgit.com/akabab/superhero-api/0.2.0/api/images/lg/2-abe-sapien.jpg',
              ),
              Example21(
                url:
                    'https://cdn.rawgit.com/akabab/superhero-api/0.2.0/api/images/lg/6-absorbing-man.jpg',
              ),
              Example21(
                  url:
                      'https://cdn.rawgit.com/akabab/superhero-api/0.2.0/api/images/lg/1-a-bomb.jpg'),
              Example21(
                url:
                    'https://cdn.rawgit.com/akabab/superhero-api/0.2.0/api/images/lg/2-abe-sapien.jpg',
              ),
              Example21(
                url:
                    'https://cdn.rawgit.com/akabab/superhero-api/0.2.0/api/images/lg/6-absorbing-man.jpg',
              ),
              Example21(
                  url:
                      'https://cdn.rawgit.com/akabab/superhero-api/0.2.0/api/images/lg/1-a-bomb.jpg'),
              Example21(
                url:
                    'https://cdn.rawgit.com/akabab/superhero-api/0.2.0/api/images/lg/2-abe-sapien.jpg',
              ),
              Example21(
                url:
                    'https://cdn.rawgit.com/akabab/superhero-api/0.2.0/api/images/lg/6-absorbing-man.jpg',
              ),
              Example21(
                  url:
                      'https://cdn.rawgit.com/akabab/superhero-api/0.2.0/api/images/lg/1-a-bomb.jpg'),
              Example21(
                url:
                    'https://cdn.rawgit.com/akabab/superhero-api/0.2.0/api/images/lg/2-abe-sapien.jpg',
              ),
              Example21(
                url:
                    'https://cdn.rawgit.com/akabab/superhero-api/0.2.0/api/images/lg/6-absorbing-man.jpg',
              ),
            ],
          );
        }
        return ListView(
          children: <Widget>[
            LandScape(
                url:
                    'https://cdn.rawgit.com/akabab/superhero-api/0.2.0/api/images/lg/1-a-bomb.jpg'),
            LandScape(
              url:
                  'https://cdn.rawgit.com/akabab/superhero-api/0.2.0/api/images/lg/2-abe-sapien.jpg',
            ),
            LandScape(
              url:
                  'https://cdn.rawgit.com/akabab/superhero-api/0.2.0/api/images/lg/6-absorbing-man.jpg',
            ),
            LandScape(
                url:
                    'https://cdn.rawgit.com/akabab/superhero-api/0.2.0/api/images/lg/1-a-bomb.jpg'),
            LandScape(
              url:
                  'https://cdn.rawgit.com/akabab/superhero-api/0.2.0/api/images/lg/2-abe-sapien.jpg',
            ),
            LandScape(
              url:
                  'https://cdn.rawgit.com/akabab/superhero-api/0.2.0/api/images/lg/6-absorbing-man.jpg',
            ),
            LandScape(
                url:
                    'https://cdn.rawgit.com/akabab/superhero-api/0.2.0/api/images/lg/1-a-bomb.jpg'),
            LandScape(
              url:
                  'https://cdn.rawgit.com/akabab/superhero-api/0.2.0/api/images/lg/2-abe-sapien.jpg',
            ),
            LandScape(
              url:
                  'https://cdn.rawgit.com/akabab/superhero-api/0.2.0/api/images/lg/6-absorbing-man.jpg',
            ),
            LandScape(
                url:
                    'https://cdn.rawgit.com/akabab/superhero-api/0.2.0/api/images/lg/1-a-bomb.jpg'),
            LandScape(
              url:
                  'https://cdn.rawgit.com/akabab/superhero-api/0.2.0/api/images/lg/2-abe-sapien.jpg',
            ),
            LandScape(
              url:
                  'https://cdn.rawgit.com/akabab/superhero-api/0.2.0/api/images/lg/6-absorbing-man.jpg',
            ),
          ],
        );
      },
    );
  }
}

class CardListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Example22(),
        Example22(),
        Example22(),
        Example22(),
        Example22(),
        Example22(),
        Example22(),
        Example22(),
        Example22(),
        Example22(),
        Example22(),
        Example22(),
        Example22(),
        Example22(),
        Example22(),
        Example22(),
        Example22(),
        Example22(),
        Example22(),
        Example22(),
        Example22(),
        Example22(),
      ],
    );
  }
}

class Example22 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(5),
      child: Row(
        children: <Widget>[
          Flexible(
            fit: FlexFit.tight,
            flex: 1,
            child: Container(
              height: 120,
              width: 100,
              child: Image.network(
                'https://cdn.rawgit.com/akabab/superhero-api/0.2.0/api/images/lg/6-absorbing-man.jpg',
                fit: BoxFit.fill,
                alignment: Alignment.topCenter,
              ),
            ),
          ),
          Flexible(
            fit: FlexFit.tight,
            flex: 2,
            child: Container(
                decoration: BoxDecoration(
                    border: Border(
                  right: BorderSide(
                    width: 2,
                    color: Colors.red,
                    style: BorderStyle.solid,
                  ),
                  top: BorderSide(
                    width: 2,
                    color: Colors.red,
                    style: BorderStyle.solid,
                  ),
                  bottom: BorderSide(
                    width: 2,
                    color: Colors.red,
                    style: BorderStyle.solid,
                  ),
                )),
                height: 120,
                width: 100,
                child: Padding(
                  padding: EdgeInsets.all(5),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Text(
                            'SPICY',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Expanded(
                              child: Container(
                                  margin: EdgeInsets.all(5),
                                  child: Text(
                                    'PRAWN',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ))),
                          Expanded(child: Text('\$340')),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Expanded(
                              child: Container(
                                  padding: EdgeInsets.all(2),
                                  child: Text(
                                    '+',
                                    style: TextStyle(fontSize: 32),
                                  ))),
                          Expanded(
                              child: Container(
                                  padding: EdgeInsets.all(2),
                                  child: Text('1',
                                      style: TextStyle(fontSize: 32)))),
                          Expanded(
                              child: Container(
                                  padding: EdgeInsets.all(2),
                                  child: Text('-',
                                      style: TextStyle(fontSize: 32)))),
                        ],
                      )
                    ],
                  ),
                )),
          )
        ],
      ),
    );
  }
}

class Example23 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        SizedBox(
          height: 50,
          width: 50,
          child: Container(
            height: 100,
            width: 100,
            color: Colors.red,
          ),
        ),
        Spacer(
          flex: 2,
        ),
        SizedBox(
          height: 50,
          width: 50,
          child: Container(
            height: 100,
            width: 100,
            color: Colors.blue,
          ),
        ),
      ],
    );
  }
}

class NewCardListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 50,
      itemBuilder: (context, index) {
        return Example24();
      },
    );
  }
}

List<Example24> getList() {
  return List.generate(10, (index) => Example24()).toList();
}

class Example24 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      padding:  EdgeInsets.all(5),
      decoration: BoxDecoration(
        border: Border.all(),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Container(
                  child: Icon(
                    Icons.account_circle,
                    size: 50,
                  ),
                ),
              ),
              Expanded(
                flex: 4,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      child: Text(
                        'Flutter McFlutter',
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      child: Text(
                        'Experienced App Developer',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(left: 10),
                child: Text(
                  '123 Main Street',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(right: 10),
                child: Text(
                  '(415) 555-0198',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Container(
                child: Icon(
                  Icons.accessibility,
                  size: 40,
                ),
              ),
              Container(
                child: Icon(
                  Icons.timer,
                  size: 40,
                ),
              ),
              Container(
                child: Icon(
                  Icons.phone_android,
                  size: 40,
                ),
              ),
              Container(
                child: Icon(
                  Icons.phone_iphone,
                  size: 40,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
