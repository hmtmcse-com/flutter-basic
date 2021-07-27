import 'package:flutter/material.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'dart:math';

const totalItems = 100;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Example',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final random = Random();

  // Generate dummy data
  final List<String> _myList = List.generate(totalItems, (i) => "Item $i");

  final ItemScrollController _itemScrollController = ItemScrollController();

  // This function will be triggered when the user presses the floating button
  void _scrollToIndex(int index) {
    _itemScrollController.scrollTo(
        index: index,
        duration: Duration(seconds: 2),
        curve: Curves.easeInOutCubic);
  }

  // The view will scroll to the item which has the index of 50
  // You can specify another number if you like
  int _desiredItemIndex = 50;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Example'),
      ),
      body: ScrollablePositionedList.builder(
        itemScrollController: _itemScrollController,
        itemCount: _myList.length,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.all(20),
            elevation: 10,
            child: Container(
              // give each container a random height
              height: 200,
              color: _desiredItemIndex == index ? Colors.purple : Colors.amber,
              alignment: Alignment.center,
              child: Text(
                _myList[index],
                style: TextStyle(fontSize: 24),
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Random random = new Random();
            int randomNumber = random.nextInt(100);
            setState(() {
              _desiredItemIndex = randomNumber;
            });
            _scrollToIndex(randomNumber);
            print(randomNumber);
          },
          child: Icon(Icons.arrow_downward)),
    );
  }
}