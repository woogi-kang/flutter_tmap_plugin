package woo.flutter_tmap_plugin.flutter_tmap_plugin

import android.content.Context
import android.view.View
import android.widget.TextView
import io.flutter.plugin.common.BinaryMessenger
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.platform.PlatformView

class TmapView internal constructor(
        private val context: Context?,
        messenger: BinaryMessenger,
        id: Int,
        args: Any?) : PlatformView, MethodChannel.MethodCallHandler {

    private val textView: TextView = TextView(context)
    private val methodChannel: MethodChannel = MethodChannel(messenger, "TmapView/$id")

    init {
        methodChannel.setMethodCallHandler(this)
    }

    override fun getView(): View? {
        textView.text = "Tmap Flutter"
        return textView
    }

    override fun dispose() {
        TODO("Not yet implemented")
    }

    private fun sendFromNative(text: String) {
        methodChannel.invokeMethod("sendFromNative", text)
    }

    override fun onMethodCall(call: MethodCall, result: MethodChannel.Result) {
        when (call.method) {
            "receiveFromFlutter" -> {
                val text = call.argument<String>("text");
                if (text != null) {
                    textView.text = text;
                    result.success("receiveFromFlutter success")
                } else {
                    result.error("-1", "Error", "Error Details")
                }
            }
            else -> result.notImplemented()
        }
    }
}