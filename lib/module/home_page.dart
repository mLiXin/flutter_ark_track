import 'package:flutter/material.dart';
import 'package:flutter_ark_track/data/static/page_data.dart';
import 'package:flutter_ark_track/widget/fund_chart_widget.dart';

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
    for (String item in FUND_LIST) {
      result.add(Tab(
        text: item,
      ));
    }
    return result;
  }

  List<Widget> _generateTabBarViews() {
    List<Widget> result = [];
    for (String item in FUND_LIST) {
      result.add(_getContent(item));
    }
    return result;
  }

  Widget _getContent(String fundName) {
    return Center(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: FundChartWidget(fundName),
      ),
    );
  }
}
