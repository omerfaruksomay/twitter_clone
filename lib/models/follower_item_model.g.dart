// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'follower_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FollowerItemModel _$FollowerItemModelFromJson(Map<String, dynamic> json) =>
    FollowerItemModel(
      const ColorConverter().fromJson(json['avatarColor'] as int),
      name: json['name'] as String,
      desc: json['desc'] as String,
      memberCount: json['memberCount'] as int,
    );

Map<String, dynamic> _$FollowerItemModelToJson(FollowerItemModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'desc': instance.desc,
      'memberCount': instance.memberCount,
      'avatarColor': const ColorConverter().toJson(instance.avatarColor),
    };
