import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => (runApp(StatefulWidgetExample()));

class StatefulWidgetExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Stateful Widget Example Code'),
        ),
        body: ExampleStatefulWidget(
          labelText: "Bismillah Text",
        ),
      ),
    );
  }
}

class ExampleStatefulWidget extends StatefulWidget {
  final String labelText;

  const ExampleStatefulWidget({required this.labelText});

  @override
  State<StatefulWidget> createState() {
    return _ExampleStatefulWidget();
  }
}

class _ExampleStatefulWidget extends State<ExampleStatefulWidget> {
  String buttonLabel = "Increase Value";
  int index = 1;

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Text(widget.labelText),
      ElevatedButton(
        onPressed: () {
          setState(() {
            buttonLabel = "Increase Value ${index}";
          });
          index++;
        },
        child: Text(buttonLabel),
      ),
    ]);
  }
}
