import 'package:comic_reader_view/comic_reader_view_android.dart';
import 'package:comic_reader_view/comic_reader_view_ios.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';

class ComicReaderView extends StatelessWidget {
  final List<String> images;
  const ComicReaderView({super.key, required this.images});

  @override
  Widget build(BuildContext context) {
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return ComicReaderViewAndroid(images: images);

      case TargetPlatform.iOS:
        return ComicReaderViewIos(images: images);
      default:
        throw UnsupportedError('Unsupported platform view');
    }
  }
}
