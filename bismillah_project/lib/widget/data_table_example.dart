import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => (runApp(DataTableExample()));

class DataTableExample extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Data Table Example Code'),
        ),
        body: Container(
          width: double.infinity,
          child: DataTable(
            sortColumnIndex: 1,
            sortAscending: true,
            headingRowColor: MaterialStateProperty.all(Colors.grey),
            columns: <DataColumn>[
              DataColumn(
                label: Text( 'Country'),
                onSort: (columnIndex, ascending){
                      print("$columnIndex $ascending");
                },
              ),
              DataColumn(
                label: Text('Code'),
              ),
              DataColumn(
                label: Text('Continent'),
              ),
            ],
            rows: const <DataRow>[
              DataRow(
                cells: <DataCell>[
                  DataCell(Text('Bangladesh')),
                  DataCell(Text('BD')),
                  DataCell(Text('Asia')),
                ],
              ),
              DataRow(
                cells: <DataCell>[
                  DataCell(Text('Canada')),
                  DataCell(Text('CA')),
                  DataCell(Text('North America')),
                ],
              ),
              DataRow(
                cells: <DataCell>[
                  DataCell(Text('USA')),
                  DataCell(Text('US')),
                  DataCell(Text('North America')),
                ],
              ),
              DataRow(
                cells: <DataCell>[
                  DataCell(Text('Australia')),
                  DataCell(Text('AU')),
                  DataCell(Text('Australia/Oceania')),
                ],
              ),
            ],
          ),
        )
      ),
    );
  }
}
