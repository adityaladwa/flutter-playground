import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final items = ["Text", "Animation"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(items[index]),
            onTap: () {
              Navigator.pushNamed(context, items[index]);
            },
          );
        },
      ),
    );
  }
}
