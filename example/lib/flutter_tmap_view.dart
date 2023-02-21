import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_tmap_plugin/flutter_tmap_plugin.dart';

// magic_view.dart
typedef void TmapViewCreatedCallback(FlutterTmapPlugin controller);

class TmapView extends StatelessWidget {
  TmapView({required Key key, required this.onTmapViewCreated}) : super(key: key);

  final TmapViewCreatedCallback onTmapViewCreated;
  static const StandardMessageCodec _decoder = StandardMessageCodec();

  @override
  Widget build(BuildContext context) {
    final Map<String, String> args = {"someInit": "initData"};
    if (defaultTargetPlatform == TargetPlatform.android) {
      return SizedBox(
        height: 200,
        width: 300,
        child: AndroidView(
          viewType: 'TmapView',
          onPlatformViewCreated: _onPlatformViewCreated,
          creationParams: args,
          creationParamsCodec: _decoder,
        ),
      );
    }

    return UiKitView(
      viewType: 'TmapView',
      onPlatformViewCreated: _onPlatformViewCreated,
      creationParams: args,
      creationParamsCodec: _decoder,
    );
  }

  void _onPlatformViewCreated(int id) {
    onTmapViewCreated(FlutterTmapPlugin(id));
  }
}