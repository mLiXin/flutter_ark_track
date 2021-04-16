import 'package:flutter/material.dart';

class FundChartWidget extends StatefulWidget {
  String fundName = "_";

  FundChartWidget(this.fundName);

  @override
  State<StatefulWidget> createState() {
    return _FundChartWidgetState();
  }
}

class _FundChartWidgetState extends State<FundChartWidget> {
  var selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return DataTable(
      sortColumnIndex: 1,
      sortAscending: false,
      columns: [
        DataColumn(label: Text("Name"), tooltip: "姓名"),
        DataColumn(label: Text("Year")),
        DataColumn(label: Text("Month")),
        DataColumn(label: Text("Day")),
        DataColumn(label: Text("Gender")),
        DataColumn(label: Text("Age")),
        DataColumn(label: Text("Address")),
      ],
      rows: [
        DataRow(
            selected: selectedIndex == 0,
            onSelectChanged: (selected) {
              if (selected) {
                setState(() {
                  selectedIndex = 0;
                });
              }
            },
            cells: [
              DataCell(Text(widget.fundName)),
              DataCell(Text("2018")),
              DataCell(Text("12")),
              DataCell(Text("09")),
              DataCell(Text("Male")),
              DataCell(Text("18")),
              DataCell(Text("jfiodnsaonfdsa"))
            ]),
        DataRow(
            selected: selectedIndex == 1,
            onSelectChanged: (selected) {
              if (selected) {
                setState(() {
                  selectedIndex = 1;
                });
              }
            },
            cells: [
              DataCell(Text(widget.fundName)),
              DataCell(Text("2019")),
              DataCell(Text("12")),
              DataCell(Text("09")),
              DataCell(Text("Male")),
              DataCell(Text("18")),
              DataCell(Text("jfiodnsaonfdsa"))
            ]),
        DataRow(
            selected: selectedIndex == 2,
            onSelectChanged: (selected) {
              if (selected) {
                setState(() {
                  selectedIndex = 2;
                });
              }
            },
            cells: [
              DataCell(Text(widget.fundName)),
              DataCell(Text("2020")),
              DataCell(Text("12")),
              DataCell(Text("09")),
              DataCell(Text("Male")),
              DataCell(Text("18")),
              DataCell(Text("jfiodnsaonfdsa"))
            ]),
      ],
    );
  }
}
