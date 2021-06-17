import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => (runApp(ListViewWithSeparatorExample()));


class ListViewWithSeparatorExample extends StatelessWidget {

  final List<String> entries = <String>['First', 'Second', 'Third'];
  final List<int> colorCodes = <int>[600, 500, 100];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('List View Example Code'),
        ),
        body: ListView.separated(
          padding: const EdgeInsets.all(8),
          itemCount: entries.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              height: 50,
              color: Colors.lime[colorCodes[index]],
              child: Center(child: Text('${entries[index]}')),
            );
          },
          separatorBuilder: (BuildContext context, int index) => const Divider(),
        ),
      ),
    );
  }
}


class ListViewBuilderExample extends StatelessWidget {

  final List<String> entries = <String>['First', 'Second', 'Third'];
  final List<int> colorCodes = <int>[600, 500, 100];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('List View Example Code'),
        ),
        body: ListView.builder(
            padding: const EdgeInsets.all(8),
            itemCount: entries.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                height: 50,
                color: Colors.red[colorCodes[index]],
                child: Center(child: Text('${entries[index]}')),
              );
            }
        ),
      ),
    );
  }
}

class ListViewExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('List View Example Code'),
        ),
        body: ListView(
          padding: const EdgeInsets.all(8),
          children: <Widget>[
            Container(
              height: 50,
              color: Colors.green[600],
              child: const Center(child: Text('First')),
            ),
            Container(
              height: 50,
              color: Colors.green[500],
              child: const Center(child: Text('Second')),
            ),
            Container(
              height: 50,
              color: Colors.green[100],
              child: const Center(child: Text('Third')),
            ),
          ],
        ),
      ),
    );
  }
}

