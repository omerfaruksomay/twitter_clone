import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

part 'follower_item_model.g.dart';

@JsonSerializable()
class FollowerItemModel {
  final String name, desc;
  final int memberCount;

  @ColorConverter()
  final Color avatarColor;

  FollowerItemModel(this.avatarColor,
      {required this.name, required this.desc, required this.memberCount});

  factory FollowerItemModel.fromJson(Map<String, dynamic> json) =>
      _$FollowerItemModelFromJson(json);

  Map<String, dynamic> toJson() => _$FollowerItemModelToJson(this);
}

class ColorConverter extends JsonConverter<Color, int> {
  const ColorConverter();

  @override
  Color fromJson(int json) {
    return Color(json);
  }

  @override
  int toJson(Color object) {
    return object.value;
  }
}
