import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

final List<DataList> data = <DataList>[
  DataList(
    'Mobiles',
    <DataList>[
      DataList(
        'MI',
        <DataList>[
          DataList('Redmi Note 9'),
          DataList('Redmi Note 10'),
          DataList('Mi 10i 5G'),
        ],
      ),
      DataList('Samsung'),
      DataList('Apple'),
    ],
  ),
  DataList(
    'Laptops',
    <DataList>[
      DataList('Dell'),
      DataList('HP'),
    ],
  ),
  DataList(
    'Appliances',
    <DataList>[
      DataList('Washing Machine'),
      DataList('AC'),
      DataList(
        'Home Appliances',
        <DataList>[
          DataList('Water Purifier'),
          DataList('Inverter'),
          DataList('Vacuum Cleaner'),
        ],
      ),
    ],
  ),
];

class DataList {
  DataList(this.title, [this.children = const <DataList>[]]);

  final String title;
  final List<DataList> children;
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Expandable ListView in Flutter'),
        ),
        body: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          itemBuilder: (BuildContext context, int index) =>
              DataPopUp(data[index]),
          itemCount: data.length,
        ),
      ),
    );
  }
}

class DataPopUp extends StatelessWidget {
  const DataPopUp(this.popup);

  final DataList popup;

  Widget _buildTiles(DataList root) {
    if (root.children.isEmpty) return ListTile(title: Text(root.title));
    return ExpansionTile(
      key: PageStorageKey<DataList>(root),
      title: Text(
        root.title,
      ),
      children: root.children.map(_buildTiles).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildTiles(popup);
  }
}