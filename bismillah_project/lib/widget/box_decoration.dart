import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => (runApp(BoxDecorationExample()));

class BoxDecorationExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.deepPurple,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Box Decoration Example Code'),
        ),
        body: Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.black,
            border: Border.all(
              color: Colors.yellow,
              width: 10,
            ),
          ),
        ),
      ),
    );
  }
}
