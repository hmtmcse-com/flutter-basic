import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => (runApp(TextExample()));

class TextExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        child: Text("Material Text"),
        alignment: Alignment.center,
      ),
    );
  }
}
