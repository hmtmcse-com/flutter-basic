import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

void main() => (runApp(FlutterTTSExample()));

class FlutterTTSExample extends StatelessWidget {

  final FlutterTts flutterTts = FlutterTts();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter TTS Example Code'),
        ),
        body: ElevatedButton(
          onPressed: () {
            print("Play Some thing");
            // flutterTts.speak("Bismillah");
          },
          child: Text('Play'),
        ),
      ),
    );
  }
}
