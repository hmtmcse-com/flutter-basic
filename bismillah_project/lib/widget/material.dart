import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => (runApp(MaterialExample()));

class MaterialExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Material(
        child: SafeArea(
          child: Text("Material Text"),
        ),
        color: Colors.black12,
        textStyle: TextStyle(fontSize: 16),
      ),
    );
  }
}
