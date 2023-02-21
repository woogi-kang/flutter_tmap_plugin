import 'package:flutter/services.dart';

class FlutterTmapPlugin {
  late MethodChannel _channel;

  FlutterTmapPlugin(int id) {
    _channel = MethodChannel('FlutterTmap/$id');
    _channel.setMethodCallHandler(_handleMethod);
  }

  Future<dynamic> _handleMethod(MethodCall call) async {
    switch (call.method) {
      case 'sendFromNative':
        String text = call.arguments as String;
        return Future.value("Text from native: $text");
    }
  }

  Future<void> receiveFromFlutter(String text) async {
    try {
      final String result = await _channel.invokeMethod('receiveFromFlutter', {"text": text});
      print("Result from native: $result");
    } on PlatformException catch (e) {
      print("Error from native: $e.message");
    }
  }
}
