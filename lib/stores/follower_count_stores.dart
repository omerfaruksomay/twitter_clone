import 'package:flutter/material.dart';
import 'package:twitter_clone/models/follower_item_model.dart';
import 'package:twitter_clone/models/pagination_model.dart';

class FollowerCountStore {
  static List<FollowerItemModel> follower = [
    FollowerItemModel(
      Color(Colors.blue.value),
      name: 'deneme1',
      desc: 'deneme1',
      memberCount: 977,
    ),
    FollowerItemModel(
      Color(Colors.red.value),
      name: 'deneme2',
      desc: 'deneme2',
      memberCount: 7,
    ),
    FollowerItemModel(
      Color(Colors.orange.value),
      name: 'deneme3',
      desc: 'deneme3',
      memberCount: 87,
    ),
    FollowerItemModel(
      Color(Colors.yellow.value),
      name: 'deneme4',
      desc: 'deneme4',
      memberCount: 7,
    ),
    FollowerItemModel(
      Color(Colors.black.value),
      name: 'deneme5',
      desc: 'deneme5',
      memberCount: 8,
    ),
  ];

  static get pagedSample => GenericPagedResponse.fromJson({
        'perPage': 2,
        'currentPage': 1,
        'data': follower.map((e) => e.toJson()),
        'totalCount': 2,
      }, (p0) => FollowerItemModel.fromJson(p0 as Map<String, dynamic>));
}
