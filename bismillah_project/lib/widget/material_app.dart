import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MaterialAppExample extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Material App Example",
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.dark,
      routes: <String, WidgetBuilder>{
        '/': (BuildContext context) {
          return Scaffold(
            appBar: AppBar(
              title: const Text('Home Route'),
            ),
          );
        },
        '/about': (BuildContext context) {
          return Scaffold(
            appBar: AppBar(
              title: const Text('About Route'),
            ),
          );
        }
      },
    );
  }
}

void main() => (runApp(MaterialAppExample()));