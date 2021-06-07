import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => (runApp(ScaffoldExample()));

class ScaffoldExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Sample Code'),
        ),
        primary: true,
        drawer: WidgetHelper.getDrawer(context),
        bottomNavigationBar: WidgetHelper.getBottomAppBar(),
        backgroundColor: Colors.blueGrey.shade200,
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        body: Text('Bismillah App'),
        floatingActionButton: WidgetHelper.getFloatingActionButton(),
      ),
    );
  }
}

class WidgetHelper {

  static getBottomAppBar(){
    return BottomAppBar(
      shape: const CircularNotchedRectangle(),
      child: Container(height: 50.0),
    );
  }

  static getFloatingActionButton(){
    return FloatingActionButton(
      onPressed: () {},
      child: const Icon(Icons.add),
    );
  }

  static getDrawer(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text('Drawer Header'),
          ),
          ListTile(
            title: Text('Item 1'),
            onTap: () {

            },
          ),
          ListTile(
            title: Text('Item 2'),
            onTap: () {

            },
          ),
        ],
      ),
    );
  }
}
