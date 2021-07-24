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

  _saySomething() async {
    // print(await tts.getLanguages);
    await tts.speak(controller.text);
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
                _saySomething();
                print("Played");
              },
              child: Text('Speak'))
        ],
      ),
    );
  }
}