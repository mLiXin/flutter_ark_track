import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

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
    return ResponsiveBuilder(
      builder: (context,sizeIndexformation) {
        if (sizeIndexformation.isTablet) {
          return Center(child: Text("you are web"),);
        } else {
          return DefaultTabController(
            length: 3,
            child: Scaffold(
              appBar: AppBar(
                title: Text("Track Demo"),
                centerTitle: true,
                bottom: TabBar(
                  tabs: [
                    Tab(text: "ARKK",),
                    Tab(text: "ARKG",),
                    Tab(text: "ARKX",),
                  ],
                ),
              ),
              body: TabBarView(
                children: [
                  Center(
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
                                DataCell(Text("Dash")),
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
                                DataCell(Text("Gopher")),
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
                                DataCell(Text("Gopher")),
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
                  ),
                  Center(child: Text("ARKG")),
                  Center(child: Text("ARKX"))
                ],
              ),
            ),
          );
        }
      } ,
    );
  }
}
