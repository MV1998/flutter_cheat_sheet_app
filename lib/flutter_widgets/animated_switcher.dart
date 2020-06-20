import 'package:flutter/material.dart';

class AnimatedSwitcherWidget extends StatefulWidget {
  @override
  _AnimatedSwitcherWidgetState createState() => _AnimatedSwitcherWidgetState();
}

class _AnimatedSwitcherWidgetState extends State<AnimatedSwitcherWidget> {
  bool switched = false;

  Widget _myAnimatedWidget = Image(
    key: ValueKey(0),
    image: NetworkImage('https://picsum.photos/200/300'),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Switcher'),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 24.0),
            child: AnimatedSwitcher(
                duration: Duration(seconds: 1),
                transitionBuilder:
                    (Widget child, Animation<double> animation) =>
                    FadeTransition(
                      child: child,
                      opacity: animation,
                    ),
                child: _myAnimatedWidget),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          setState(() {
            _myAnimatedWidget = switched
                ? Image(
              key: ValueKey(1),
              image: NetworkImage(
                  'https://picsum.photos/seed/picsum/200/300'),
            )
                : Image(
              key: ValueKey(2),
              image:
              NetworkImage('https://picsum.photos/200/300?grayscale'),
            );
            switched ? switched = false : switched = true;
          });
        },
        icon: Icon(
          Icons.swap_horiz,
          color: Colors.white,
        ),
        label: Text(
          'Switch Widgets',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
