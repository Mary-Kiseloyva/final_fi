package com.example.fi

import com.yandex.mapkit.MapKitFactory
import io.flutter.app.FlutterApplication

class MainApplication: FlutterApplication() {
    override fun onCreate() {
        super.onCreate()

        MapKitFactory.setApiKey("7989056b-d87c-42e5-9672-a180feee23b3")
    }
}