import 'package:flutter/material.dart';
import 'package:twitter_clone/models/follower_item_model.dart';

class MemberOfListItem extends StatefulWidget {
  final FollowerItemModel model;
  const MemberOfListItem({
    super.key,
    required this.model,
  });

  @override
  State<MemberOfListItem> createState() => _MemberOfListItemState();
}

class _MemberOfListItemState extends State<MemberOfListItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.model.name,
                  style: const TextStyle(fontSize: 15),
                ),
                const SizedBox(height: 7),
                Text(
                  widget.model.desc,
                  style: const TextStyle(fontSize: 20),
                ),
                const SizedBox(height: 7),
                Text(
                  '${widget.model.memberCount.toString()} followers',
                  style: const TextStyle(color: Colors.grey),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: CircleAvatar(
                radius: 30,
                backgroundColor: widget.model.avatarColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
