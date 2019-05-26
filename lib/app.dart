import 'package:flutter/material.dart';
import 'package:todo_lib/todo_lib.dart';
import 'package:todo_core/todo_core.dart';
import 'models.dart';
import 'screens/home_screen.dart';

class VanillaApp extends StatefulWidget {

  final TodosRepository repository;

  const VanillaApp({Key key, this.repository}) : super(key: key);

  @override
  _VanillaAppState createState() => _VanillaAppState();
}

class _VanillaAppState extends State<VanillaApp> {

  AppState appState = AppState.loading();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();


  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'hehe',
      routes: {
        ArchSampleRoutes.home: (context) {
          return HomeScreen();
        },
        ArchSampleRoutes.addTodo: (context) {
          return null;
        }
      },
    );
  }
}
