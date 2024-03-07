import 'package:flutter/material.dart';

class PostTile extends StatelessWidget {
  final String profileimg;
  final String username;
  final String time;
  final String postimage;
  const PostTile(
      {required this.profileimg,
      required this.username,
      required this.time,
      required this.postimage,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(profileimg),
            ),
            SizedBox(width: 10),
            Text(
              username,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(width: 10),
            Text(time),
            Spacer(),
            Icon(Icons.more_vert),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 200,
            width: 500,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                image: DecorationImage(
                    image: AssetImage(postimage), fit: BoxFit.cover)),
          ),
        ),
        const Row(
          children: [
            Icon(Icons.heart_broken_rounded),
            Icon(Icons.comment),
            Icon(Icons.share_rounded),
            Spacer(),
            Icon(Icons.save)
          ],
        ),
      ],
    );
  }
}
