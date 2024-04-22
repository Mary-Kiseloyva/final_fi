package com.example.fi

import com.yandex.mapkit.MapKitFactory
import io.flutter.app.FlutterApplication

class MainApplication: FlutterApplication() {
    override fun onCreate() {
        super.onCreate()

        MapKitFactory.setApiKey("c62c81c3-d678-45d2-8e20-5cfaf6ad55c8")
    }
}