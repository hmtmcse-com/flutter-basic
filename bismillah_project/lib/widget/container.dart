import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContainerExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        child: Container(
          child: Text(
            "This is Container widget example",
            style: TextStyle(
              color: Colors.green,
              fontSize: 25,
            ),
          ),
          color: Colors.black,
          padding: EdgeInsets.all(50.0),
          margin: EdgeInsets.all(50.0),
          alignment: Alignment.center,
        ),
    );
  }
}

class ContainerExampleWithDecoration extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        child: Text(
          "This is Container widget example",
          style: TextStyle(
            color: Colors.red,
            fontSize: 25,
          ),
        ),
        decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.green),
        padding: EdgeInsets.all(50.0),
        margin: EdgeInsets.all(50.0),
        alignment: Alignment.center,
      ),
    );
  }
}
