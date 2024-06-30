package com.example.comic_reader_view

import androidx.annotation.NonNull

import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.MethodChannel.MethodCallHandler
import io.flutter.plugin.common.MethodChannel.Result
import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.embedding.engine.plugins.FlutterPlugin.FlutterPluginBinding

/** ComicReaderViewPlugin */
class ComicReaderViewPlugin: FlutterPlugin {

  override fun onAttachedToEngine(binding: FlutterPluginBinding) {
    binding
      .platformViewRegistry
      .registerViewFactory("comic_reader_view", NativeViewFactory())
  }

  override fun onDetachedFromEngine(binding: FlutterPluginBinding) {}
}
