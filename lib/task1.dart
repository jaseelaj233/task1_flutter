import 'package:flutter/material.dart';
import 'package:task1/datas.dart';
import 'package:task1/widgets/posttile.dart';

class Task extends StatelessWidget {
  const Task({super.key});

  @override
  Widget build(BuildContext context) {
    Datas data = Datas();
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 226, 186, 199),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              height: 100,
              width: MediaQuery.of(context).size.width,
              child: const Row(
                children: [Icon(Icons.menu), Spacer(), Icon(Icons.send)],
              ),
            ),
            Row(
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('hello'),
                    Text(
                      'Roger',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
                    ),
                  ],
                ),
                const Spacer(),
                OutlinedButton.icon(
                  onPressed: () {},
                  label: const Text('add content'),
                  icon: const Icon(Icons.add),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 10.0, 8.0, 4.0),
              child: Container(
                height: 200,
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: ListView.separated(
                    separatorBuilder: (context, index) =>
                        const SizedBox(width: 5),
                    scrollDirection: Axis.horizontal,
                    itemCount: data.items.length,
                    itemBuilder: (context, index) {
                      return Container(
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          image: DecorationImage(
                              image: AssetImage(data.items[index]['postimg']),
                              fit: BoxFit.cover),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            CircleAvatar(
                              backgroundImage:
                                  AssetImage(data.items[index]['profileimg']),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              data.items[index]['username'],
                              style: const TextStyle(color: Colors.white),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              data.items[index]['time'],
                              style: const TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
            Expanded(
                child: ListView.builder(
              itemCount: 4,
              itemBuilder: (context, index) {
                return PostTile(
                  profileimg: data.items[index]['profileimg'],
                  username: data.items[index]['username'],
                  time: data.items[index]['time'],
                  postimage: data.items[index]['postimg'],
                );
              },
            ))
          ],
        ),
      ),
    );
  }
}
