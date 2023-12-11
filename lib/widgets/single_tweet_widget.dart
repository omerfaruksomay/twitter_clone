import 'package:flutter/material.dart';

class SingleTweet extends StatelessWidget {
  const SingleTweet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Divider(),
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.favorite,
              color: Colors.grey,
            ),
            SizedBox(width: 15),
            Text(
              'Kieron Dotson and Zack John liked',
              style: TextStyle(color: Colors.grey),
            ),
          ],
        ),
        const SizedBox(height: 5),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(width: 15),
            CircleAvatar(
              backgroundColor: Colors.blue.shade50,
              maxRadius: 40,
            ),
            const SizedBox(width: 10),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      'Maximmilian',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 4),
                    Text(
                      ' @maxjacobson ·3h',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
                SizedBox(
                  width: 250,
                  child: Text(
                    'UXR/UX: You can only bring one item to a remote island to assist your research of native use of tools and usability. What do you bring? #TellMeAboutYou',
                    overflow: TextOverflow.ellipsis,
                    maxLines: 3,
                  ),
                )
              ],
            ),
          ],
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}
