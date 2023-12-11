import 'package:flutter/material.dart';

class MemberOfListItem extends StatelessWidget {
  const MemberOfListItem({
    super.key,
  });

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
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Pixsellz team',
                  style: TextStyle(fontSize: 15),
                ),
                SizedBox(height: 7),
                Text(
                  'start-up',
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(height: 7),
                Text(
                  '88 members',
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: CircleAvatar(
                radius: 30,
                backgroundColor: Colors.blue.shade100,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
