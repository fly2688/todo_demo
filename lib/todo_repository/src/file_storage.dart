import 'dart:io';
import 'dart:convert';
import '../../todo_core/todo_core.dart';

class FileStorage {
  final String tag;
  final Future<Directory> Function() getDirectory;

  FileStorage(this.tag, this.getDirectory);

  Future<List<TodoEntity>> loadTodos() async {
    final file = await _getLocalFile();
    final string = await file.readAsString();
    final json = JsonDecoder().convert(string);
    final todos = (json['todos'])
      .map<TodoEntity>((todo) => TodoEntity.fromJson(todo))
      .toList();

    return todos;
  }

  Future<File> _getLocalFile() async {
    final dir = await getDirectory();

    return File('${dir.path}/LEE__$tag.json');
  }

  Future<File> saveTodos(List<TodoEntity> todos) async {
    final file = await _getLocalFile();

    return file.writeAsString(JsonEncoder().convert({
      'todos': todos.map((todo) => todo.toJson()).toList(),
    }));
  }

  Future<FileSystemEntity> clean() async {
    final file = await _getLocalFile();
    return file.delete();
  }
}