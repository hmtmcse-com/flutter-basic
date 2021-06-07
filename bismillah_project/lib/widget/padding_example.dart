import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => (runApp(PaddingExample()));

class ContainerBox {
  static getBox(color) {
    return Container(
      decoration: BoxDecoration(
        color: color,
      ),
      child: SizedBox(
        width: 100,
        height: 100,
      ),
    );
  }
}

class PaddingExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Padding Example"),
        ),
        body: Row(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(10),
              child: ContainerBox.getBox(Colors.black),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: ContainerBox.getBox(Colors.red),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: ContainerBox.getBox(Colors.green),
            ),
          ],
        ),
      ),
    );
  }
}
