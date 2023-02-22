package com.example.plugin_sample

import android.content.Context
import android.view.View
import android.widget.FrameLayout
import android.widget.LinearLayout
import android.widget.TextView
import com.skt.Tmap.TMapView
import io.flutter.plugin.platform.PlatformView


internal class MapView(private val view: View) : PlatformView {
    private lateinit var textView: TextView

    override fun getView(): View {
        return view
    }

    override fun dispose() {

    }

//    init {
//        context?.let { ct ->
//            val tMapView = TMapView(ct)
//
//            textView = TextView(ct)
//            textView.text = "Rendered on a native Android view (id: $id)"
//            textView.textSize = 20f
//        }
//    }

}