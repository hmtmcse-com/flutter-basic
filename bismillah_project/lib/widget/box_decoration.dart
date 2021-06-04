import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BoxDecorationExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.deepPurple,
        child: Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.black,
            border: Border.all(
              color: Colors.yellow,
              width: 10,
            ),
          ),
        ));
  }
}
