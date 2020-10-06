import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:pinkvilla_test/model/feed_model.dart';

class FeedPage extends StatefulWidget {
  @override
  _FeedPageState createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {
  Future<List<Feed>> getDataFromServer() async {
    Response response;
    Dio dio = new Dio();
    response = await dio
        .get("https://www.pinkvilla.com/feed/video-test/video-feed.json");
    List<dynamic> data = response.data;
    List<Feed> feeds = data.map((data) => Feed.fromJson(data)).toList();
    return feeds;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(),
      // Container(
      //   child: FutureBuilder<List<Feed>>(
      //     future: getDataFromServer(),
      //     builder: (context, data) {
      //       if (data.connectionState != ConnectionState.waiting &&
      //           data.hasData) {
      //         var feedList = data.data;
      //         return ListView.builder(
      //             itemCount: feedList.length,
      //             itemBuilder: (context, index) {
      //               var feedData = feedList[index];
      //               return Container(
      //                 child: Column(
      //                   children: [
      //                     Text(
      //                       feedData.user.name,
      //                     ),
      //                     Text(
      //                       feedData.user.headshot,
      //                     ),
      //                     Text(
      //                       feedData.url,
      //                     ),
      //                     Text(
      //                       feedData.title,
      //                     ),
      //                     Text(
      //                       feedData.shareCount.toString(),
      //                     ),
      //                     Text(
      //                       feedData.likeCount.toString(),
      //                     ),
      //                     Text(
      //                       feedData.commentCount.toString(),
      //                     ),
      //                   ],
      //                 ),
      //               );
      //             });
      //       } else {
      //         return Container(
      //           child: Text('Loading..'),
      //         );
      //       }
      //     },
      //   ),
      // ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.search), title: Text('Search')),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_circle), title: Text('')),
          BottomNavigationBarItem(icon: Icon(Icons.chat), title: Text('Chat')),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline), title: Text('Me')),
        ],
        currentIndex: 0,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
        backgroundColor: Colors.black,
        type: BottomNavigationBarType.fixed,
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
