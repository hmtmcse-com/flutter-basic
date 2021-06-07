import 'package:flutter/material.dart';

void main() => (runApp(AppbarExample()));

class AppbarExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('AppBar Example'),
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.airplay),
          ),
          centerTitle: true,
          backgroundColor: Colors.black54,
          actions: <Widget>[
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.comment),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.delete),
            ),
          ],
        ),
        body: const Center(
          child: Text(
            'This is the Example Appbar',
            style: TextStyle(fontSize: 24),
          ),
        ),
      ),
    );
  }
}
