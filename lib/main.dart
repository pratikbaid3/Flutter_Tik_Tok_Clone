import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:pinkvilla_test/model/feed_model.dart';

const NESTED_JSON =
    '[{"url": "https://www.pinkvilla.com/feed/video-test/1GzPt1E-wXaMF_rAmm_E18XdTqqwVocde.mp4","comment-count": 121,"like-count": 834,"share-count": 22,"title": "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy","user": {"name": "Calvin Klein","headshot": "https://pbs.twimg.com/profile_images/458869460888072192/Tul0RxVp_normal.jpeg"}},{"url": "https://www.pinkvilla.com/feed/video-test/1GzPt1E-wXaMF_rAmm_E18XdTqqwVocde.mp4","comment-count": 121,"like-count": 834,"share-count": 22,"title": "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy","user": {"name": "Calvin Klein","headshot": "https://pbs.twimg.com/profile_images/458869460888072192/Tul0RxVp_normal.jpeg"}}]';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  Future<List<Feed>> getDataFromServer() async {
    Response response;
    Dio dio = new Dio();
    response = await dio
        .get("https://www.pinkvilla.com/feed/video-test/video-feed.json");
    List<dynamic> data = response.data;
    print(data);
    List<Feed> feeds = data.map((data) => Feed.fromJson(data)).toList();
    print(feeds);
    return feeds;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        child: FutureBuilder<List<Feed>>(
          future: getDataFromServer(),
          builder: (context, data) {
            if (data.connectionState != ConnectionState.waiting &&
                data.hasData) {
              var feedList = data.data;
              return ListView.builder(
                  itemCount: feedList.length,
                  itemBuilder: (context, index) {
                    var feedData = feedList[index];
                    return Container(
                      child: Column(
                        children: [
                          Text(
                            feedData.user.name,
                          ),
                          Text(
                            feedData.user.headshot,
                          ),
                          Text(
                            feedData.url,
                          ),
                          Text(
                            feedData.title,
                          ),
                          Text(
                            feedData.shareCount.toString(),
                          ),
                          Text(
                            feedData.likeCount.toString(),
                          ),
                          Text(
                            feedData.commentCount.toString(),
                          ),
                        ],
                      ),
                    );
                  });
            } else {
              return Container(
                child: Text('Loading..'),
              );
            }
          },
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
