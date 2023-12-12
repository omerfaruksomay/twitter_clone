import 'package:flutter/material.dart';
import 'package:twitter_clone/gen/assets.gen.dart';
import 'package:twitter_clone/widgets/single_tweet_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Assets.images.twitterLogo.image(scale: 2),
        leading: Padding(
          padding: const EdgeInsets.only(left: 15),
          child: CircleAvatar(
            backgroundColor: Colors.blue.shade50,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: IconButton(
              onPressed: () {},
              icon: Assets.images.featuresIcon.image(scale: 2),
            ),
          ),
        ],
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return const SingleTweet();
        },
        itemCount: 17,
      ),
    );
  }
}
