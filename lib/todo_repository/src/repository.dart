import '../../todo_core/todo_core.dart';
import 'file_storage.dart';

class TodosRepositoryFlutter implements TodosRepository {

  final FileStorage fileStorage;

  TodosRepositoryFlutter(this.fileStorage);

  @override
  Future<List<TodoEntity>> loadTodos() async {
    try {
      return await fileStorage.loadTodos();
    } catch (e) {
      return [];
    }
  }

  @override
  Future saveTodos(List<TodoEntity> todos) {
    return Future.wait<dynamic>([
      fileStorage.saveTodos(todos),
    ]);
  }

}