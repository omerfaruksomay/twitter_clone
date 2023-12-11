import 'package:flutter/material.dart';
import 'package:twitter_clone/screens/home_screen/home_screen.dart';
import 'package:twitter_clone/screens/list_screens/twitter_lists_screen.dart';
import 'package:twitter_clone/screens/search_screen/search_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    const HomeScreen(),
    const SearchScreen(),
    const Center(
      child: Text('notification'),
    ),
    const Center(
      child: Text('message'),
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: Scaffold(
        body: _screens[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
              label: '',
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              label: '',
              icon: Icon(Icons.search),
            ),
            BottomNavigationBarItem(
              label: '',
              icon: Icon(Icons.notifications_active_outlined),
            ),
            BottomNavigationBarItem(
              label: '',
              icon: Icon(Icons.message),
            ),
          ],
          onTap: _onItemTapped,
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.blue,
        ),
      ),
    );
  }
}
