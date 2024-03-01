import 'package:flutter/material.dart';

class Task extends StatelessWidget {
  const Task({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 226, 186, 199),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 100,
              width: MediaQuery.of(context).size.width,
              child: const Row(
                children: [Icon(Icons.menu), Spacer(), Icon(Icons.send)],
              ),
            ),
            const Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('hello'),
                    Text(
                      'Roger',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
                    ),
                  ],
                )
              ],
            ),
            const Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage("assets/trivior.jpg"),
                ),
                SizedBox(width: 10),
                Text(
                  'trevor',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 10),
                Text('15m'),
                Spacer(),
                Icon(Icons.more_vert),
              ],
            ),
            Container(
              height: 200,
              width: 500,
              child: Image.asset("assets/download (2).jpg", fit: BoxFit.cover),
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
            const Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/aspen.jpg'),
                ),
                SizedBox(width: 10),
                Text(
                  'aspen',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 10),
                Text('10m'),
                Spacer(),
                Icon(Icons.more_vert),
              ],
            ),
            Container(
              height: 200,
              width: 500,
              child: Image.asset(
                "assets/pexels-photo-674010.jpeg",
                fit: BoxFit.cover,
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
            const Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/merry.jpg'),
                ),
                SizedBox(width: 10),
                Text(
                  'merry',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 10),
                Text('15m'),
                Spacer(),
                Icon(Icons.more_vert),
              ],
            ),
            Container(
              height: 200,
              width: 500,
              child: Image.asset(
                "assets/pexels-photo-674010.jpeg",
                fit: BoxFit.cover,
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
            const Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(
                      'assets/240_F_338903738_RT7vLyCCZeWWvKD42waga3xej2CGFnXW.jpg'),
                ),
                SizedBox(width: 10),
                Text(
                  'Tharesa',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 10),
                Text('10m'),
                Spacer(),
                Icon(Icons.more_vert),
              ],
            ),
            Container(
              height: 200,
              width: 500,
              child: Image.asset(
                "assets/pexels-photo-674010.jpeg",
                fit: BoxFit.cover,
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

            // ListView(
            //   scrollDirection: Axis.horizontal,
            //   children: [
            //     Container(
            //       height: 100,
            //       width: 100,
            //       decoration: BoxDecoration(color: Colors.amber),
            //     )
            //   ],
            // )
          ],
        ),
      ),
    );
  }
}
