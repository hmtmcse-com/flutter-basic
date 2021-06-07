import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => (runApp(SpacerExample()));

class SpacerExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Spacer Example Code'),
        ),
        body: Row(
          children: const <Widget>[
            Text('Begin'),
            Spacer(),
            Text('Middle'),
            Spacer(flex: 2),
            Text('End'),
          ],
        ),
      ),
    );
  }
}
