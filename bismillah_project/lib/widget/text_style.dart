import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => (runApp(TextStyleExample()));

class TextStyleExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Text Style Example Code'),
        ),
        body: Container(
          child: Text(
            "Material Text",
            style: TextStyle(
              color: Colors.green[400],
              fontSize: 20,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
            ),
          ),
          alignment: Alignment.center,
          padding: EdgeInsets.all(50.0),
          margin: EdgeInsets.all(50.0),
          color: Colors.black54,
        ),
      ),
    );
  }
}
