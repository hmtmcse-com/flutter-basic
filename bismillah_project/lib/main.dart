import 'package:flutter/material.dart';

class BismillProject extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bismillah App',
      home: Scaffold(
        appBar: AppBar(
          title: Text("Bismillah App"),
        ),
        body: Center(
          child: Text("Bismillah App Body"),
        ),
      ),
    );
  }
}

void main() {
  runApp(BismillProject());
}