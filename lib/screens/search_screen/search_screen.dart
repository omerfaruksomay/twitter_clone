import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffE7ECF0),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(color: Colors.white, child: const Divider()),
          Container(
            color: Colors.white,
            padding: const EdgeInsets.all(8),
            child: const Row(
              children: [
                Text(
                  'Trends for you',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Container(color: Colors.white, child: const Divider()),
          Container(
            height: 150,
            color: Colors.white,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 70),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'No new trends for you',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'It seems like there’s not a lot to show you right now, but you can see trends for other areas',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 10),
                    ),
                    const SizedBox(height: 10),
                    ElevatedButton(
                      style: const ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.blue)),
                      onPressed: () {},
                      child: const Text(
                        'Change location',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: CircleAvatar(
            backgroundColor: Colors.blue.shade50,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child:
                IconButton(onPressed: () {}, icon: const Icon(Icons.settings)),
          )
        ],
        title: SizedBox(
          height: 40,
          child: TextField(
            cursorColor: Colors.grey,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.red),
                borderRadius: BorderRadius.circular(100),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
