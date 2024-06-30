import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

class ComicReaderViewIos extends StatelessWidget {
  final List<String> images;
  const ComicReaderViewIos({super.key, required this.images});

  @override
  Widget build(BuildContext context) {
    // This is used in the platform side to register the view.
    const String viewType = '<platform-view-type>';
    // Pass parameters to the platform side.
    final Map<String, dynamic> creationParams = <String, dynamic>{};

    return UiKitView(
      viewType: viewType,
      layoutDirection: TextDirection.ltr,
      creationParams: creationParams,
      creationParamsCodec: const StandardMessageCodec(),
    );
  }
}
