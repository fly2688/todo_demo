import 'package:todo_lib/todo_lib.dart';

class AppState {
  bool isLoading;
}

class Todo {
  bool complete;
  String id;
  String note;
  String task;

  Todo(this.task, {this.complete = false, this.note = '', String id})
    : this.id = id ?? Uuid().generateV4();
}