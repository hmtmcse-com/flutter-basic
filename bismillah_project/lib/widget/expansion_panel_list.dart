import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => (runApp(ExpansionPanelListExample()));

class ExpansionPanelListExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Expansion PanelList Example Code'),
        ),
        body: SingleChildScrollView(
          child: Container(
            child: ExpansionPanelList(
              children: [
                ExpansionPanel(
                  headerBuilder: (BuildContext context, bool isExpanded) {
                    return ListTile(
                      title: Text("Header"),
                      subtitle: Text('This is sub heading of the main text. If it longer than regular'),
                    );
                  },
                  body: ListTile(
                    title: Text("Body Text"),
                  ),
                  isExpanded: true,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
