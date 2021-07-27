import 'package:flutter/material.dart';

void main() => (runApp(AccessStatefulWidgetMethodExample()));


class AccessStatefulWidgetMethodExample extends StatelessWidget {

  GlobalKey<MyStatefulWidgetState> _myStatefulWidgetState = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Access Stateful Widget Method Example Code'),
        ),
        body: Column(
          children: [
            MyStatefulWidget(
              key: _myStatefulWidgetState,
              passedData: "Data from Paren UI",
            ),
            Container(child: ElevatedButton(
              onPressed: () {
                print("Pressed");
                _myStatefulWidgetState.currentState!.accessMe();
              },
              child: Text('Call the function.'),
            ),)
          ],
        ),
      ),
    );
  }
}


class MyStatefulWidget extends StatefulWidget {
  final String? passedData;

  const MyStatefulWidget({Key? key, this.passedData}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return MyStatefulWidgetState();
  }
}

class MyStatefulWidgetState extends State<MyStatefulWidget>{

  @override
  Widget build(BuildContext context) {
    return Text("Bismillah");
  }

  accessMe(){
    print("Called Access me");
    print("Pssed data ${widget.passedData}");
  }

}