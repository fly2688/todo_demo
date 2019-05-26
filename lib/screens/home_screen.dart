import 'package:flutter/material.dart';
import 'package:todo_lib/todo_lib.dart';

import '../models.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("1111"),
        actions: <Widget>[
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          key: ArchSampleKeys.tabs,

          items:AppTab.values.map((tab) {
            return BottomNavigationBarItem(
                icon: Icon(
                  tab == AppTab.todos ? Icons.list : Icons.show_chart,
                  key: tab == AppTab.stats ? ArchSampleKeys.statsTab : ArchSampleKeys.todoTab,
                ),
                title: Text(
                  tab == AppTab.stats ? "1" : "2",
                ),
            );
          }).toList(),
      ),
    );
  }
}
