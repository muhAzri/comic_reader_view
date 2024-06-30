import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

class ComicReaderViewIos extends StatelessWidget {
  final List<String> images;
  const ComicReaderViewIos({super.key, required this.images});
  final String viewType = 'comic_reader_view';

  @override
  Widget build(BuildContext context) {
    return UiKitView(
      viewType: viewType,
      layoutDirection: TextDirection.ltr,
      creationParams: {
        'imageUrls': images,
      },
      creationParamsCodec: const StandardMessageCodec(),
    );
  }
}
