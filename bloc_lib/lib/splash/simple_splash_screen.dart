import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


void main() => (runApp(SimpleSplashScreen()));

class SimpleSplashScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
          color: Colors.white,
          child:FlutterLogo(size:MediaQuery.of(context).size.height)
      ),
    );
  }

}