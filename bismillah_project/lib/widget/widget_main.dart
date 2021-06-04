import 'package:bismillah_project/widget/container.dart';
import 'package:bismillah_project/widget/text_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'box_decoration.dart';
import 'material.dart';

class WidgetMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Widget Example Main",
      home: Container(
        child: BoxDecorationExample(),
      ),
    );
  }
}

void main() {
  runApp(WidgetMain());
}
