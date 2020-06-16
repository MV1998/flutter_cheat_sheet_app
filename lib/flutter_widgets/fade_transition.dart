import 'package:flutter/material.dart';

class FadeTransitionWidget extends StatefulWidget {
  @override
  _FadeTransitionWidgetState createState() => _FadeTransitionWidgetState();
}

class _FadeTransitionWidgetState extends State<FadeTransitionWidget>
    with SingleTickerProviderStateMixin {
  AnimationController _animationController;
  Animation _animation;
  CurvedAnimation _curvedAnimation; //

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
        vsync: this, duration: const Duration(seconds: 5));
    _curvedAnimation =
        CurvedAnimation(parent: _animationController, curve: Curves.easeIn);
    _animation = Tween(begin: 0.0, end: 1.0).animate(_curvedAnimation);

    _animation.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _animationController.reverse();
      } else if (status == AnimationStatus.dismissed) {
        _animationController.forward();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fade Transition'),
      ),
      body: Center(
        child: ScaleTransition(
          ///Providing our animation to opacity property
          scale: _animation,
          child: Icon(
            Icons.favorite,
            color: Colors.red,
            size: 300,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Colors.lightBlue,
        onPressed: () => setState(() {
          ///We start the animation by calling this
          _animationController.forward();
        }),
        icon: Icon(
          Icons.movie_filter,
          color: Colors.white,
        ),
        label: Text(
          "Animate",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _animationController.dispose();
  }
}
