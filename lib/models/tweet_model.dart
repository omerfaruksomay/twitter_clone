import 'package:json_annotation/json_annotation.dart';

part 'tweet_model.g.dart';

@JsonSerializable()
class TweetModel {
  final String tweetID, text;
  final DateTime date;
  final List<String> likes;

  TweetModel({
    required this.tweetID,
    required this.text,
    required this.date,
    required this.likes,
  });

  factory TweetModel.fromJson(Map<String, dynamic> json) =>
      _$TweetModelFromJson(json);

  Map<String, dynamic> toJson() => _$TweetModelToJson(this);
}
