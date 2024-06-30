import 'package:comic_reader_view/comic_reader_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: const ComicReaderView(
          images: [
            "https://jp.belajarserver.xyz/storage/drive/Ctiq7Fkpn7ihVwpmmtBPP1lr9uVzcQ/813C8DK1vjjN3JuGMnB2Lv41fcqo2k/tn5ORkd9zcmSSdMAa6l3elJzst9qTB.jpg",
            "https://jp.belajarserver.xyz/storage/drive/Ctiq7Fkpn7ihVwpmmtBPP1lr9uVzcQ/813C8DK1vjjN3JuGMnB2Lv41fcqo2k/tn5ORkd9zcmSSdMAa6l3elJzst9qTB.jpg",
            "https://jp.belajarserver.xyz/storage/drive/Ctiq7Fkpn7ihVwpmmtBPP1lr9uVzcQ/813C8DK1vjjN3JuGMnB2Lv41fcqo2k/tn5ORkd9zcmSSdMAa6l3elJzst9qTB.jpg",
            "https://jp.belajarserver.xyz/storage/drive/Ctiq7Fkpn7ihVwpmmtBPP1lr9uVzcQ/813C8DK1vjjN3JuGMnB2Lv41fcqo2k/tn5ORkd9zcmSSdMAa6l3elJzst9qTB.jpg",
            "https://jp.belajarserver.xyz/storage/drive/Ctiq7Fkpn7ihVwpmmtBPP1lr9uVzcQ/813C8DK1vjjN3JuGMnB2Lv41fcqo2k/tn5ORkd9zcmSSdMAa6l3elJzst9qTB.jpg",
            "https://jp.belajarserver.xyz/storage/drive/Ctiq7Fkpn7ihVwpmmtBPP1lr9uVzcQ/813C8DK1vjjN3JuGMnB2Lv41fcqo2k/tn5ORkd9zcmSSdMAa6l3elJzst9qTB.jpg",
            "https://jp.belajarserver.xyz/storage/drive/Ctiq7Fkpn7ihVwpmmtBPP1lr9uVzcQ/813C8DK1vjjN3JuGMnB2Lv41fcqo2k/tn5ORkd9zcmSSdMAa6l3elJzst9qTB.jpg",
            "https://jp.belajarserver.xyz/storage/drive/Ctiq7Fkpn7ihVwpmmtBPP1lr9uVzcQ/813C8DK1vjjN3JuGMnB2Lv41fcqo2k/tn5ORkd9zcmSSdMAa6l3elJzst9qTB.jpg",
            "https://jp.belajarserver.xyz/storage/drive/Ctiq7Fkpn7ihVwpmmtBPP1lr9uVzcQ/813C8DK1vjjN3JuGMnB2Lv41fcqo2k/tn5ORkd9zcmSSdMAa6l3elJzst9qTB.jpg",
            "https://jp.belajarserver.xyz/storage/drive/Ctiq7Fkpn7ihVwpmmtBPP1lr9uVzcQ/813C8DK1vjjN3JuGMnB2Lv41fcqo2k/tn5ORkd9zcmSSdMAa6l3elJzst9qTB.jpg",
          ],
        ),
      ),
    );
  }
}
