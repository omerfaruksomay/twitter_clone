import 'package:flutter/material.dart';
import 'package:twitter_clone/widgets/member_of_list_item.dart';

class MemberOfList extends StatefulWidget {
  const MemberOfList({super.key});

  @override
  State<MemberOfList> createState() => _MemberOfListState();
}

class _MemberOfListState extends State<MemberOfList> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) {
        return const MemberOfListItem();
      },
      separatorBuilder: (context, index) => Container(
        color: Colors.white,
        child: const Divider(
          color: Colors.grey,
        ),
      ),
      itemCount: 10,
    );
  }
}
