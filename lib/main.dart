import 'package:flutter/material.dart';
import 'app.dart';
import 'todo_repository/todos_repository.dart';
import 'package:path_provider/path_provider.dart';

void main() => runApp(
  VanillaApp(
    repository: TodosRepositoryFlutter(
        FileStorage('LeeApp', getApplicationDocumentsDirectory)
    ),
  )
);
