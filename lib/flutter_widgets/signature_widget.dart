import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:signature/signature.dart';

class SignatureWidget extends StatefulWidget {
  @override
  _SignatureWidgetState createState() => _SignatureWidgetState();
}

class _SignatureWidgetState extends State<SignatureWidget> {
  final SignatureController _controller = SignatureController(
    penStrokeWidth: 3,
    penColor: Colors.black,
    exportBackgroundColor: Colors.white,
  );

  @override
  void initState() {
    super.initState();
    _controller.addListener(() => print("Value changed"));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Builder(
        builder: (context) => Scaffold(
          body: ListView(
            children: <Widget>[
              Container(
                height: 300,
                child: Center(
                  child: Text('Big container to test scrolling issues'),
                ),
              ),
              //SIGNATURE CANVAS
              Signature(
                controller: _controller,
                height: 300,
                backgroundColor: Colors.white,
              ),
              //OK AND CLEAR BUTTONS
              Container(
                decoration: const BoxDecoration(color: Colors.black),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    //SHOW EXPORTED IMAGE IN NEW ROUTE
                    IconButton(
                      icon: const Icon(Icons.check),
                      color: Colors.blue,
                      onPressed: () async {
                        if (_controller.isNotEmpty) {
                          var data = await _controller.toPngBytes();
                          saveFile(data);
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (BuildContext context) {
                                return Scaffold(
                                  appBar: AppBar(),
                                  body: Center(
                                      child: Container(
                                          color: Colors.grey[300],
                                          child: Image.memory(data))),
                                );
                              },
                            ),
                          );
                        }
                      },
                    ),
                    //CLEAR CANVAS
                    IconButton(
                      icon: const Icon(Icons.clear),
                      color: Colors.blue,
                      onPressed: () {
                        setState(() => _controller.clear());
                      },
                    ),
                  ],
                ),
              ),
              Container(
                height: 300,
                child: Center(
                  child: Text('Big container to test scrolling issues'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Future<String> localDCIMPath() async {
  final path = join(
      (await getExternalStorageDirectories(type: StorageDirectory.dcim))[0]
          .path,
      '${DateTime.now()}.png');
  print('$path');
  return path;
}

Future<File> internetImageFile() async {
  final path = await localDCIMPath();
  return File('$path');
}

saveFile(Uint8List data) async {
  final file = await internetImageFile();
  file.writeAsBytesSync(data);
}
