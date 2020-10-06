import 'package:dio/dio.dart';
import 'package:pinkvilla_test/model/feed_model.dart';

class FeedApiController {
  Future<List<Feed>> getDataFromServer() async {
    Response response;
    Dio dio = new Dio();
    response = await dio
        .get("https://www.pinkvilla.com/feed/video-test/video-feed.json");
    List<dynamic> data = response.data;
    List<Feed> feeds = data.map((data) => Feed.fromJson(data)).toList();
    return feeds;
  }
}
