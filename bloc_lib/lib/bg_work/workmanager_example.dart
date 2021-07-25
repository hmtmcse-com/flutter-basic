import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:workmanager/workmanager.dart';

void main() => (runApp(WorkManagerExample()));

void callbackDispatcher() {
  Workmanager().executeTask((task, inputData) {
    print(
        "Native called background task: ----------");
    return Future.value(true);
  });
}

class WorkManagerExample extends StatelessWidget {



  _initBG() {
    Workmanager().initialize(callbackDispatcher, isInDebugMode: false);
    Workmanager().registerOneOffTask("1", "simpleTask");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('WorkManager Example Code'),
        ),
        body: ElevatedButton(
          onPressed: () {
            print("Play Some thing");
            _initBG();
          },
          child: Text('Play'),
        ),
      ),
    );
  }
}
