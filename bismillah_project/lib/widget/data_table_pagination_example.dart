import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => (runApp(DataTablePaginationExample()));


class DataTablePaginationExample extends StatelessWidget {
  var tableRow = new TableRow();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Data Table Pagination Example Code'),
          ),
          body: Container(
            width: double.infinity,
            child: SingleChildScrollView(
              child: PaginatedDataTable(
                header: Text("Pagination Example"),
                onRowsPerPageChanged: (perPage) {},
                rowsPerPage: 10,
                columns: <DataColumn>[
                  DataColumn(
                    label: Text('Country'),
                    onSort: (columnIndex, ascending) {
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
                source: tableRow,
              ),
            ),
          )),
    );
  }
}

class TableRow extends DataTableSource {
  @override
  DataRow? getRow(int index) {
    return DataRow.byIndex(index: index, cells: [
      DataCell(Text("Cell $index")),
      DataCell(Text("Cell $index")),
      DataCell(Text("Cell $index")),
    ]);
  }

  @override
  bool get isRowCountApproximate => true;

  @override
  int get rowCount => 50;

  @override
  int get selectedRowCount => 0;
}
