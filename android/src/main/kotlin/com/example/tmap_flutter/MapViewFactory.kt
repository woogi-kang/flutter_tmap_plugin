package com.example.plugin_sample

import android.content.Context
import android.view.LayoutInflater
import android.widget.LinearLayout
import com.example.tmap_flutter.R
import com.skt.Tmap.TMapView
import io.flutter.plugin.common.StandardMessageCodec
import io.flutter.plugin.platform.PlatformView
import io.flutter.plugin.platform.PlatformViewFactory

class MapViewFactory : PlatformViewFactory(StandardMessageCodec.INSTANCE) {
    override fun create(context: Context?, viewId: Int, args: Any?): PlatformView {
        var linearLayoutview = LayoutInflater.from(context).inflate(R.layout.linearLayoutTmap, null);
        val layout = LinearLayout(context)

        val view = TMapView(context)
        layout.addView(view)

        val creationParams = args as Map<String?, Any?>?
        return MapView(layout)
    }

}