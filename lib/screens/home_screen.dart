import 'package:flutter/material.dart';
import '../todo_lib/todo_lib.dart';

import '../models.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  VisibilityFilter activeFilter = VisibilityFilter.all;
  AppTab activeTab = AppTab.todos;

  _updateTab(AppTab tab) {
    setState(() {
      activeTab = tab;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(ArchSampleLocalizations.of(context).title),
        actions: <Widget>[
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          key: ArchSampleKeys.tabs,
          currentIndex: AppTab.values.indexOf(activeTab),
          onTap: (index) {
            _updateTab(AppTab.values[index]);
          },
          items:AppTab.values.map((tab) {
            return BottomNavigationBarItem(
                icon: Icon(
                  tab == AppTab.todos ? Icons.list : Icons.show_chart,
                  key: tab == AppTab.stats ? ArchSampleKeys.statsTab : ArchSampleKeys.todoTab,
                ),
                title: Text(
                  tab == AppTab.stats ? "1" : ArchSampleLocalizations.of(context).todos,
                ),
            );
          }).toList(),
      ),
    );
  }
}
