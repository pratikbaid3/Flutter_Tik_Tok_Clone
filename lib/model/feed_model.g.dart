// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feed_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Feed _$FeedFromJson(Map<String, dynamic> json) {
  return Feed(
    commentCount: json['comment-count'] as String,
    likeCount: json['like-count'] as String,
    shareCount: json['share-count'] as String,
    title: json['title'] as String,
    url: json['url'] as String,
    user: json['user'] == null
        ? null
        : User.fromJson(json['user'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$FeedToJson(Feed instance) => <String, dynamic>{
      'url': instance.url,
      'comment-count': instance.commentCount,
      'like-count': instance.likeCount,
      'share-count': instance.shareCount,
      'title': instance.title,
      'user': instance.user?.toJson(),
    };
