import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:pinkvilla_test/controller/feed_api_controller.dart';
import 'package:pinkvilla_test/model/feed_model.dart';
import 'package:pinkvilla_test/widgets/bottom_nav_bar.dart';
import 'package:pinkvilla_test/widgets/feed_card.dart';
import 'package:video_player/video_player.dart';

class FeedPage extends StatefulWidget {
  @override
  _FeedPageState createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {
  FeedApiController feedApiController = new FeedApiController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: FutureBuilder<List<Feed>>(
          future: feedApiController.getDataFromServer(),
          builder: (context, data) {
            if (data.connectionState != ConnectionState.waiting &&
                data.hasData) {
              var feedList = data.data;
              return PageView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: feedList.length,
                  itemBuilder: (context, index) {
                    var feedData = feedList[index];
                    return FeedCard(
                      feed: feedData,
                    );
                  });
            } else {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ),
      ),
      bottomNavigationBar:
          BottomNavBar(), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
