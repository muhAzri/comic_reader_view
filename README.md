# Comic Reader View

A Flutter plugin designed to solve the issue of blurry rendering for large images in Flutter applications. Flutter's default rendering mechanism (Skia) can struggle with large images, leading to blurriness and performance issues. This plugin addresses these challenges by leveraging native rendering capabilities: on Android, images are rendered using XML layouts, while on iOS, UIKit is utilized. This approach ensures high-quality, crisp rendering of comic and large images, enhancing both performance and user experience in Flutter applications.

## Installation

Add `comic_reader_view` as a dependency in your `pubspec.yaml` file:

```yaml
dependencies:
  comic_reader_view: ^0.1.0
```

### Usages

```dart
import 'package:flutter/material.dart';
import 'package:comic_reader_view/comic_reader_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Comic Reader'),
        ),
        body: Center(
          child: ComicReaderView(
            images: [
              "https://example.com/image1.jpg",
              "https://example.com/image2.jpg",
              "https://example.com/image3.jpg",
              // Add more image URLs as needed
            ],
          ),
        ),
      ),
    );
  }
}
```

### Features

- Native rendering on Android and iOS for high-performance image display.

- Solves issues with blurry rendering of large images in Flutter.

- Simplifies integration with Flutter applications for comic and image-heavy content.

### Compatibility

- Dart: >=2.12.0 <3.0.0

- Flutter: >=2.8.0 <3.0.0

### Issues and Feedback

Please file issues or feature requests in the [GitHub repository](https://github.com/muhAzri/comic_reader_view/issues).


### License

This project is licensed under the MIT License - see the [LICENSE](https://github.com/muhAzri/comic_reader_view/blob/main/LICENSE) file for details.
