import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => (runApp(BoxExample()));

class Helper {
  static getText() {
    return Center(
      child: Text(
        "Box",
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 60,
          color: Colors.yellow,
        ),
      ),
    );
  }
}

class BoxExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Box Example"),
        ),
        body: Row(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                color: Colors.red,
              ),
              child: SizedBox(
                width: 300,
                height: 300,
                child: Helper.getText(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
