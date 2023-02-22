package com.example.tmap_flutter

import android.app.Activity
import androidx.annotation.NonNull
import com.example.plugin_sample.MapView
import com.example.plugin_sample.MapViewFactory
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine

import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.embedding.engine.plugins.activity.ActivityAware
import io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.MethodChannel.MethodCallHandler
import io.flutter.plugin.common.MethodChannel.Result

/** TmapFlutterPlugin */
class TmapFlutterPlugin: FlutterPlugin, ActivityAware {
  constructor()

  constructor(activity: Activity) {
    registrarActivityHashCode = activity.hashCode()
  }

  private var registrarActivityHashCode = 0
  private var pluginBinding: FlutterPlugin.FlutterPluginBinding? = null
  private var activityPluginBinding: ActivityPluginBinding? = null

  override fun onAttachedToEngine(@NonNull flutterPluginBinding: FlutterPlugin.FlutterPluginBinding) {
    pluginBinding = flutterPluginBinding
  }

  override fun onDetachedFromEngine(@NonNull binding: FlutterPlugin.FlutterPluginBinding) {
    pluginBinding = null
  }

  override fun onAttachedToActivity(binding: ActivityPluginBinding) {
    activityPluginBinding = binding
    registrarActivityHashCode = binding.activity.hashCode()
    pluginBinding
            ?.platformViewRegistry
            ?.registerViewFactory(
                    "tmap_flutter",
                    MapViewFactory()
            )
  }

  override fun onDetachedFromActivityForConfigChanges() {
  }

  override fun onReattachedToActivityForConfigChanges(binding: ActivityPluginBinding) {
  }

  override fun onDetachedFromActivity() {
  }
}
