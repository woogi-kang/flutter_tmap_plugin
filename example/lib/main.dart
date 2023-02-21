import 'package:flutter/material.dart';
import 'package:flutter_tmap_plugin/flutter_tmap_plugin.dart';
import 'package:flutter_tmap_plugin_example/flutter_tmap_view.dart';

void main() {
  runApp(
    MaterialApp(
      title: '쾌변',
      theme: ThemeData(
        primaryColor: Colors.black,
      ),
      home: MagicScreen(),
    ),
  );
}

class MagicScreen extends StatefulWidget {
  @override
  _MagicScreenState createState() => _MagicScreenState();
}

class _MagicScreenState extends State<MagicScreen> {
  FlutterTmapPlugin _flutterTmapPlugin = FlutterTmapPlugin(3);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Magic App"),
      ),
      body: Stack(
        children: <Widget>[
          TmapView(
            key: GlobalKey(),
            onTmapViewCreated: (FlutterTmapPlugin controller) {
              setState(() {
                _flutterTmapPlugin = controller;
              });
            },
          ),
        ],
      ),
      floatingActionButton: IconButton(
        icon: Icon(Icons.add),
        onPressed: () {
          _flutterTmapPlugin.receiveFromFlutter('hello');
        },
      ),
    );
  }
}