import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'feed.dart';

class FeedPage extends StatefulWidget {
  @override
  const FeedPage({Key? key}) : super(key: key);
  _FeedPageState createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage>{
  @override
  Widget build(BuildContext context) {
    final List<String> images = [
      "images/feed_eximage_1.jpg",
      "images/feed_eximage_2.jpg",
      "images/feed_eximage_3.jpg",
      "images/feed_eximage_4.jpg",
      "images/feed_eximage_5.jpg",
      "images/feed_eximage_6.jpg",
      "images/feed_eximage_7.jpg",
    ];
    return Scaffold(
      body: ListView.builder(
        itemCount: images.length, // 이미지 개수만큼 보여주기
        itemBuilder: (context, index) {
          final image = images[index]; // index에 해당하는 이미지
          return Feed(imageUrl: image); // imageUrl 전달
        },
      ),
    );
  }
}