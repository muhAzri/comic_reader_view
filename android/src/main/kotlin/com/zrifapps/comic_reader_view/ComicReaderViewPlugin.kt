package com.zrifapps.comic_reader_view

import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.embedding.engine.plugins.FlutterPlugin.FlutterPluginBinding

/** ComicReaderViewPlugin */
class ComicReaderViewPlugin: FlutterPlugin {

  override fun onAttachedToEngine(binding: FlutterPluginBinding) {
    binding
      .platformViewRegistry
      .registerViewFactory("comic_reader_view", ChapterViewFactory())
  }

  override fun onDetachedFromEngine(binding: FlutterPluginBinding) {}
}
