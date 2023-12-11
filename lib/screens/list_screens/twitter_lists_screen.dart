import 'package:flutter/material.dart';
import 'package:twitter_clone/gen/assets.gen.dart';
import 'package:twitter_clone/screens/list_screens/member_of_list_screen.dart';
import 'package:twitter_clone/screens/list_screens/subscribed_list_screen.dart';

class TwitterListScreen extends StatefulWidget {
  const TwitterListScreen({super.key});

  @override
  State<TwitterListScreen> createState() => _TwitterListScreenState();
}

class _TwitterListScreenState extends State<TwitterListScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: const Color(0xffE7ECF0),
        floatingActionButton: FloatingActionButton(
          shape: const StadiumBorder(),
          backgroundColor: Colors.blue,
          onPressed: () {
            print('add member button pressed');
          },
          child: Assets.images.addMemberIcon.image(scale: 2),
        ),
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.arrow_back_ios_new,
                color: Colors.blue,
              )),
          backgroundColor: Colors.white,
          centerTitle: true,
          bottom: TabBar(
            overlayColor: MaterialStatePropertyAll(Colors.blue.shade50),
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorColor: Colors.blue,
            unselectedLabelColor: Colors.grey,
            labelColor: Colors.blue,
            tabs: const [
              Tab(text: 'Subscribed to'),
              Tab(text: 'Member of'),
            ],
          ),
          title: const Text('Lists'),
        ),
        body: const TabBarView(
          children: [
            SubscribedList(),
            MemberOfList(),
          ],
        ),
      ),
    );
  }
}
