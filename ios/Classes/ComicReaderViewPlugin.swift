import Flutter
import UIKit

public class ComicReaderViewPlugin: NSObject, FlutterPlugin {
   public static func register(with registrar: FlutterPluginRegistrar) {
        let factory = FLNativeViewFactory(messenger: registrar.messenger())
        registrar.register(factory, withId: "comic_reader_view")
    }
}
