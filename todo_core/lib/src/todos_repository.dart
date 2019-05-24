import 'dart:async';
import 'dart:core';
import 'todo_entity.dart';

abstract class TodosRepository {

  Future<List<TodoEntity>> loadTodos();

  Future saveTodos(List<TodoEntity> todos);
}
















