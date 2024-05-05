package com.example.fi

import com.yandex.mapkit.MapKitFactory
import io.flutter.app.FlutterApplication

class MainApplication: FlutterApplication() {
    override fun onCreate() {
        super.onCreate()

        MapKitFactory.setApiKey("10e4410d-f696-403a-b648-3f7af549c64b")
    }
}