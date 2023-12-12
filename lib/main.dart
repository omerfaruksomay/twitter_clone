import 'package:flutter/material.dart';
import 'package:twitter_clone/screens/list_screens/twitter_lists_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Twitter Clone',
      debugShowCheckedModeBanner: false,
      home: TwitterListScreen(),
    );
  }
}
