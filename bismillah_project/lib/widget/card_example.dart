import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => (runApp(CardExample()));

class CardExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Card Example Code'),
        ),
        body: Card(
          child: SizedBox(
            height: 300,
            width: 300,
            child: Text('This is new card.'),
          ),
        ),
      ),
    );
  }
}
