import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => (runApp(SafeAreaExample()));

class SafeAreaExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Text('Safe Area Example'),
      ),
    );
  }
}
