import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => (runApp(RowExample()));

class ContainerBox {
  static getBox(color) {
    return Expanded(
        child: Container(
      margin: EdgeInsets.all(3),
      decoration: BoxDecoration(
        color: color,
      ),
      child: SizedBox(
        width: 100,
        height: 100,
      ),
    ));
  }
}

class RowExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Row Example"),
        ),
        body: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ContainerBox.getBox(Colors.black),
            ContainerBox.getBox(Colors.red),
            ContainerBox.getBox(Colors.green),
            ContainerBox.getBox(Colors.blue),
          ],
        ),
      ),
    );
  }
}
