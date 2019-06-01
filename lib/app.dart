import 'package:flutter/material.dart';
import 'todo_core/todo_core.dart';
import 'todo_lib/todo_lib.dart';
import 'models.dart';
import 'screens/home_screen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'screens/add_edit_screen.dart';

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

    widget.repository.loadTodos().then((loadedTodos) {
      setState(() {
        appState = AppState(
          todos: loadedTodos.map(Todo.fromEntity).toList(),
        );
      });
    }).catchError((err) {
      setState(() {
        appState.isLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "lee",
      theme: ArchSampleTheme.theme,
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
          return HomeScreen(
            appState: appState,
            updateTodo: updateTodo,
            addTodo: addTodo,
            removeTodo: removeTodo,
            toggleAll: toggleAll,
            clearCompleted: clearCompleted,
          );
        },
        ArchSampleRoutes.addTodo: (context) {
          return AddEditScreen(
            key: ArchSampleKeys.addTodoScreen,
            addTodo: addTodo,
            updateTodo: updateTodo,
          );
        }
      },
    );
  }

  void addTodo(Todo todo) {
    setState(() {
      appState.todos.add(todo);
    });
  }

  void updateTodo(Todo todo, {bool complete, String id, String note, String task}) {
    setState(() {
      todo.complete = complete ?? todo.complete;
      todo.id = id ?? todo.id;
      todo.note = note ?? todo.note;
      todo.task = task ?? todo.task;
    });
  }

  void removeTodo(Todo todo) {
    setState(() {
      appState.todos.remove(todo);
    });
  }

  void toggleAll() {
    setState(() {
      appState.toggleAll();
    });
  }

  void clearCompleted() {
    setState(() {
      appState.clearCompleted();
    });
  }

  @override
  void setState(fn) {
    super.setState(fn);

    widget.repository.saveTodos(
      appState.todos.map((todo) => todo.toEntity()).toList(),
    );
  }
}
