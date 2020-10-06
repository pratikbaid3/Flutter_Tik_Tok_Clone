import 'package:flutter/material.dart';
import 'package:pinkvilla_test/pages/feed_page.dart';

const NESTED_JSON =
    '[{"url": "https://www.pinkvilla.com/feed/video-test/1GzPt1E-wXaMF_rAmm_E18XdTqqwVocde.mp4","comment-count": 121,"like-count": 834,"share-count": 22,"title": "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy","user": {"name": "Calvin Klein","headshot": "https://pbs.twimg.com/profile_images/458869460888072192/Tul0RxVp_normal.jpeg"}},{"url": "https://www.pinkvilla.com/feed/video-test/1GzPt1E-wXaMF_rAmm_E18XdTqqwVocde.mp4","comment-count": 121,"like-count": 834,"share-count": 22,"title": "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy","user": {"name": "Calvin Klein","headshot": "https://pbs.twimg.com/profile_images/458869460888072192/Tul0RxVp_normal.jpeg"}}]';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: FeedPage(),
    );
  }
}
