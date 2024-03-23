import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.separated(
            itemBuilder: (context, index) {
              return ListTile(
                tileColor: (index + 1) % 5 == 0 ? Colors.pink : Colors.black,
              );
            },
            separatorBuilder: (context, index) => Divider(),
            itemCount: 50));
  }
}
