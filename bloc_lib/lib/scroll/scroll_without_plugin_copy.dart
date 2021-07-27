import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kindacode.com',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _scrollController = ScrollController();

  // Generate dummy data to fill the ListView
  final List<String> listItems = List.generate(100, (i) => "Item $i");

  // Define the fixed height for an item
  final double _height = 200;

  // Define the function that scroll to an item
  void _scrollToIndex(index) {
    _scrollController.animateTo(_height * index,
        duration: Duration(seconds: 2), curve: Curves.easeIn);
  }

  // The index of the destination item
  // It is a random number
  int _destinationIndex = 0;

  // This is ued for creating a random number
  final _random = Random();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Example'),
      ),
      body: ListView.builder(
          controller: _scrollController,
          itemCount: listItems.length,
          itemBuilder: (_, index) {
            return Container(
                height: _height,
                child: Card(
                    color: index == _destinationIndex
                        ? Colors.orange
                        : Colors.blue[100],
                    child: Center(
                        child: Text(
                          listItems[index],
                          style: TextStyle(fontSize: 18),
                        ))));
          }),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              _destinationIndex = _random.nextInt(100);
            });
            _scrollToIndex(_destinationIndex);
          },
          child: Icon(Icons.refresh)),
    );
  }
}