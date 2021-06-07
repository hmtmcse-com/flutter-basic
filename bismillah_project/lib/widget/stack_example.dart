import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => (runApp(StackExample()));

class StackExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Stack Example Code'),
        ),
        body: Container(
          alignment: Alignment.center,
          child: Stack(
            children: <Widget>[
              Container(
                width: 200,
                height: 200,
                color: Colors.red,
              ),
              Container(
                width: 180,
                height: 180,
                color: Colors.green,
              ),
              Container(
                width: 160,
                height: 160,
                color: Colors.blue,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
