import 'package:json_annotation/json_annotation.dart';
import 'package:pinkvilla_test/model/user_model.dart';
part 'feed_model.g.dart';

@JsonSerializable(explicitToJson: true)
class Feed {
  String url;
  String commentCount;
  String likeCount;
  String shareCount;
  String title;
  User user;

  Feed(
      {this.commentCount,
      this.likeCount,
      this.shareCount,
      this.title,
      this.url,
      this.user});

  factory Feed.fromJson(Map<String, dynamic> data) => _$FeedFromJson(data);
  Map<String, dynamic> toJson() => _$FeedToJson(this);
}
