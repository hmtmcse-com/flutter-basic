
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



void main() => (runApp(MaterialExample()));

class MaterialExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Sample Code'),
        ),
      ),
    );
  }
}