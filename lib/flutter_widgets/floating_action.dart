import 'package:flutter/material.dart';

class FloatingActionButtonWidget extends StatefulWidget {
  @override
  _FloatingActionButtonWidgetState createState() => _FloatingActionButtonWidgetState();
}

class _FloatingActionButtonWidgetState extends State<FloatingActionButtonWidget> {
  bool _isMini = false;
  FloatingActionButtonLocation _fabLocation =
      FloatingActionButtonLocation.centerDocked;

  static final GlobalKey<ScaffoldState> _scaffoldKey =
  GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Floating Action Button'),
      ),
      body:  ListView(
        padding: const EdgeInsets.only(bottom: 88.0),
        children: <Widget>[
          Center(
            child: Container(
              margin: EdgeInsets.only(top: 24),
              child: Text(
                'Select Fab Size',
                style: TextStyle(
                    color: Theme.of(context).backgroundColor,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(18),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                _OptionItem(false, _isMini, _onSizeChange, 'Normal'),
                _OptionItem(true, _isMini, _onSizeChange, 'Mini'),
              ],
            ),
          ),

          divider(context),

          Center(
            child: Container(
              margin: EdgeInsets.only(top: 24),
              child: Text(
                'Select Fab Position',
                style: TextStyle(
                    color: Theme.of(context).backgroundColor,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,),
              ),
            ),
          ),

          ///Container containing all the Radio buttons
          Container(
            margin: EdgeInsets.all(18),
            child: Wrap(
              children: <Widget>[
                _OptionItem(FloatingActionButtonLocation.centerDocked,
                    _fabLocation, _onLocationChanged, 'Center (Docked)'),
                _OptionItem(FloatingActionButtonLocation.endDocked,
                    _fabLocation, _onLocationChanged, 'End (Docked)'),
                _OptionItem(FloatingActionButtonLocation.centerFloat,
                    _fabLocation, _onLocationChanged, 'Center (Float)'),
                _OptionItem(FloatingActionButtonLocation.endFloat, _fabLocation,
                    _onLocationChanged, 'End (Float)'),
              ],
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _scaffoldKey.currentState
            .showSnackBar(SnackBar(content: Text("You clicked on the FAB"))),
        child: Icon(Icons.add),
        foregroundColor: Colors.white,
        backgroundColor: Colors.orange,
        elevation: 2.0,
        mini: _isMini,
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.blueAccent,
        shape: CircularNotchedRectangle(),
        notchMargin: 4,
        child: Container(
          height: 50.0,
        ),
      ),
      floatingActionButtonLocation: _fabLocation,
    );
  }

  _onLocationChanged(FloatingActionButtonLocation value) => setState(() {
    _fabLocation = value;
  });

  ///method called whenever you want to change size
  _onSizeChange(bool value) => setState(() {
    _isMini = value;
  });
}

class _OptionItem<T> extends StatelessWidget {
  const _OptionItem(this.value, this.groupValue, this.onChanged, this.title);

  final String title;
  final T value;
  final T groupValue;
  final ValueChanged<T> onChanged;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Radio<T>(
            value: value,
            groupValue: groupValue,
            activeColor: Colors.lightBlue,
            onChanged: onChanged),
        GestureDetector(
          onTap: () {
            onChanged(value);
          },
          child: Text(
            title,
            style:
            TextStyle(fontSize: 14.0,),
          ),
        ),
      ],
    );
  }
}


Container divider(BuildContext context) => Container(
  child: Divider(),
  margin: EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
);