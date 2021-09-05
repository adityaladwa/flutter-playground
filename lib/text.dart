import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Text"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              "Hello, World",
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 30),
            ),
          ),
          Divider(),
          Center(
            child: RichText(
              text: TextSpan(
                style: TextStyle(color: Colors.green, fontSize: 30),
                children: const <TextSpan>[
                  TextSpan(
                    text: "Hello",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: ", World",
                    style: TextStyle(
                      fontStyle: FontStyle.italic,
                      color: Colors.blueAccent,
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
