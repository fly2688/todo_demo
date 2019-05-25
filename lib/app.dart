import 'package:flutter/material.dart';
import 'package:todo_lib/todo_lib.dart';

class VanillaApp extends StatefulWidget {

  @override
  _VanillaAppState createState() => _VanillaAppState();
}

class _VanillaAppState extends State<VanillaApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '',
      routes: {
        ArchSampleRoutes.home: (context) {
          return null;
        }
      },
    );
  }
}
