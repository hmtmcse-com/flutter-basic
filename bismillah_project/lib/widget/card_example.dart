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
          borderOnForeground: true,
          color: Colors.grey,
          shadowColor: Colors.red,
          margin: EdgeInsets.all(20),
          child: SizedBox(
            height: 300,
            width: 300,
            child: Center(
              child: Text(
                'This is new card.',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.red,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
