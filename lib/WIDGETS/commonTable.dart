import 'package:flutter/material.dart';

customTable(tableHead, tableData) {
  return SingleChildScrollView(
    scrollDirection: Axis.vertical,
    child: SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: DataTable(
         headingRowColor: WidgetStateProperty.all(Colors.grey[300]), 
        border: TableBorder.all(), columns: [
        for (var i in tableHead) DataColumn(label: Text("$i")),
      ], rows: [
        for (var item in tableData)
          DataRow(cells: [
            for (int i = 0; i < item.length; i++) DataCell(Text("${item[i]}")),
          ])
      ]),
    ),
  );
}
