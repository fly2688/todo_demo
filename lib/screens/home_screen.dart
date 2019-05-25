import 'package:flutter/material.dart';
import 'package:todo_lib/todo_lib.dart';

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
          key: ArchSampleKeys.addTodoFab,

          items: appta
      ),
    );
  }
}
