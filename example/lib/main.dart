import 'package:flutter/material.dart';
import 'package:tmap_flutter_example/native_view_example.dart';
import 'package:tmap_flutter_example/virtual_display_example.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SafeArea(
        child: Scaffold(
          body: Center(
            child: GestureDetector(
              onTap: () {
                print("onTap");
              },
              onTapCancel: () {
                print("onTapCancel");
              },
              onLongPress: () {
                print("onTapCancel");
              },
              onDoubleTap: () {
                print("onTapCancel");
              },
              child: const NativeViewExample(),
            ),
          ),
        ),
      ),
    );
  }
}