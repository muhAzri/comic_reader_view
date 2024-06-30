import Flutter
import UIKit

class FLNativeViewFactory: NSObject, FlutterPlatformViewFactory {
    private var messenger: FlutterBinaryMessenger

    init(messenger: FlutterBinaryMessenger) {
        self.messenger = messenger
        super.init()
    }

    func create(
        withFrame frame: CGRect,
        viewIdentifier viewId: Int64,
        arguments args: Any?
    ) -> FlutterPlatformView {
        return FLNativeView(
            frame: frame,
            viewIdentifier: viewId,
            arguments: args,
            binaryMessenger: messenger)
    }

    public func createArgsCodec() -> FlutterMessageCodec & NSObjectProtocol {
        return FlutterStandardMessageCodec.sharedInstance()
    }
}

class FLNativeView: NSObject, FlutterPlatformView {
    private var _view: UIScrollView
    private var imageUrls: [String]

    init(
        frame: CGRect,
        viewIdentifier viewId: Int64,
        arguments args: Any?,
        binaryMessenger messenger: FlutterBinaryMessenger?
    ) {
        _view = UIScrollView(frame: frame)
        imageUrls = []

        if let argsObject = args as? [String: Any], let urls = argsObject["imageUrls"] as? [String] {
            imageUrls = urls
        }

        super.init()
        createNativeView(view: _view)
    }

    func view() -> UIView {
        return _view
    }

    func createNativeView(view: UIScrollView) {
        // Screen width
        let screenWidth = UIScreen.main.bounds.width

        // Start yOffset from top of UIScrollView content
        var yOffset: CGFloat = 0.0

        for urlStr in imageUrls {
            if let url = URL(string: urlStr) {
                // Load image asynchronously
                DispatchQueue.global().async {
                    if let data = try? Data(contentsOf: url), let image = UIImage(data: data) {
                        DispatchQueue.main.async {
                            let imageSize = image.size
                            let aspectRatio = imageSize.width / imageSize.height
                            let imageViewHeight = screenWidth / aspectRatio
                            
                            let imageView = UIImageView(image: image)
                            imageView.frame = CGRect(x: 0, y: yOffset, width: screenWidth, height: imageViewHeight)
                            imageView.contentMode = .scaleAspectFit // Ensure aspect fit
                            
                            view.addSubview(imageView)

                            // Adjust yOffset for the next image
                            yOffset += imageViewHeight

                            // Update contentSize of scrollView if necessary
                            view.contentSize = CGSize(width: screenWidth, height: yOffset)
                        }
                    }
                }
            }
        }
    }

}
