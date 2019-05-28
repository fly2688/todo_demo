import 'package:flutter/material.dart';
import 'todo_core/todo_core.dart';
import 'todo_lib/todo_lib.dart';
import 'models.dart';
import 'screens/home_screen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

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
      localizationsDelegates: [
        ArchSampleLocalizationsDelegate(),
        GlobalWidgetsLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('en', ''),
        const Locale('zh', ''),
      ],
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
