import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MaterialExample extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Text("Material Text"),
      ),
      color: Colors.black12,
      textStyle: TextStyle(
        fontSize: 16
      ),
    );
  }

}