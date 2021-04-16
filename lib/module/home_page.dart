import 'package:flutter/material.dart';
import 'package:flutter_ark_track/data/static/page_data.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  var selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: FUND_LIST.length,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Track Demo"),
          centerTitle: true,
          bottom: TabBar(
            tabs: _generateTabs(),
          ),
        ),
        body: TabBarView(
          children: _generateTabBarViews(),
        ),
      ),
    );
  }

  List<Widget> _generateTabs() {
    List<Widget> result = [];
    for(String item in FUND_LIST) {
      result.add(Tab(text: item,));
    }
    return result;
  }

  List<Widget> _generateTabBarViews() {
    List<Widget> result = [];
    for(String item in FUND_LIST) {
      result.add(_getContent(item));
    }
    return result;
  }

  Widget _getContent(String fundName) {
    return Center(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: DataTable(
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
                  DataCell(Text(fundName)),
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
                  DataCell(Text(fundName)),
                  DataCell(Text("2009")),
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
                  DataCell(Text(fundName)),
                  DataCell(Text("2009")),
                  DataCell(Text("12")),
                  DataCell(Text("09")),
                  DataCell(Text("Male")),
                  DataCell(Text("18")),
                  DataCell(Text("jfiodnsaonfdsa"))
                ]),
          ],
        ),
      ),
    );
  }
}
