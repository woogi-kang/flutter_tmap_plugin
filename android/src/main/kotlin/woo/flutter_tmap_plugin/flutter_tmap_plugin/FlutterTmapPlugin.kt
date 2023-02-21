package woo.flutter_tmap_plugin.flutter_tmap_plugin

import android.app.Activity
import android.content.Context
import android.view.View
import android.widget.TextView

import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.embedding.engine.plugins.FlutterPlugin.FlutterPluginBinding
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.MethodChannel.MethodCallHandler
import io.flutter.plugin.common.MethodChannel.Result

import com.skt.Tmap.TMapTapi
import io.flutter.plugin.common.BinaryMessenger
import io.flutter.plugin.platform.PlatformView

/** FlutterTmapPlugin */
class FlutterTmapPlugin: FlutterPlugin {
    override fun onAttachedToEngine(binding: FlutterPluginBinding) {
        val viewFactory = TmapViewFactory(binding.binaryMessenger)
        binding.platformViewRegistry.registerViewFactory("TmapView", viewFactory)
    }

    override fun onDetachedFromEngine(binding: FlutterPluginBinding) {
    }
}
