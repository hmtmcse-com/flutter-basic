import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  final FlutterTts tts = FlutterTts();
  final TextEditingController controller = TextEditingController(text: 'Hello world');

  Home() {
    // tts.setLanguage('en');
    tts.setSpeechRate(0.2);
  }

  _saySomething(String text) async {
    // print(await tts.getLanguages);
    await tts.speak(text);
  }

  _loopWords() {
    var listData = [
      'abandon',
      'about',
      'ability',
      'above',
      'absolutely',
      'absorb',
      'access',
      'accompany',
    ];
    for (var element in listData) {
      _saySomething(element);
      sleep(const Duration(seconds:2));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: controller,
          ),
          ElevatedButton(
              onPressed: () {
                // _saySomething(controller.text);
                _loopWords();
                print("Played");
              },
              child: Text('Speak'))
        ],
      ),
    );
  }
}