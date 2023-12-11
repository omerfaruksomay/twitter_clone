import 'package:flutter/material.dart';

class SubscribedList extends StatelessWidget {
  const SubscribedList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 61, vertical: 150),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'You haven’t created or subscribed to any Lists ',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 22),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text('When you do, it’ll show up here.'),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                print('Create list button pressed');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue, // Background color
              ),
              child: const Text(
                'Create a List',
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
