import 'package:flutter/material.dart';
import 'package:twitter_clone/models/follower_item_model.dart';
import 'package:twitter_clone/stores/follower_count_stores.dart';
import 'package:twitter_clone/widgets/member_of_list_item.dart';

class MemberOfList extends StatefulWidget {
  const MemberOfList({super.key});

  @override
  State<MemberOfList> createState() => _MemberOfListState();
}

class _MemberOfListState extends State<MemberOfList> {
  List<FollowerItemModel> models = FollowerCountStore.follower;
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) {
        return MemberOfListItem(
          model: models[index],
        );
      },
      separatorBuilder: (context, index) => Container(
        color: Colors.white,
        child: const Divider(
          color: Colors.grey,
        ),
      ),
      itemCount: models.length,
    );
  }
}
