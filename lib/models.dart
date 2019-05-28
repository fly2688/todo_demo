import 'todo_core/todo_core.dart';
import 'todo_lib/todo_lib.dart';

class AppState {
  bool isLoading;
  List<Todo> todos;

  AppState({
    this.isLoading = false,
    this.todos = const [],
  });

  factory AppState.loading() => AppState(isLoading: true);

  bool get allComplete => todos.every((todo) => todo.complete);

  List<Todo> filteredTodos(VisibilityFilter activeFilter) =>
      todos.where((todo) {
        if (activeFilter == VisibilityFilter.all) {
          return true;
        } else if (activeFilter == VisibilityFilter.active) {
          return !todo.complete;
        } else if (activeFilter == VisibilityFilter.completed) {
          return todo.complete;
        }
      }).toList();

  bool get hasComletedTodos => todos.any((todo) => todo.complete);

  @override
  // TODO: implement hashCode
  int get hashCode => todos.hashCode ^ isLoading.hashCode;

  int get numActive => todos.fold(0, (sum, todo) => !todo.complete ? ++sum : sum);

  int get numCompleted => todos.fold(0, (sum, todo) => todo.complete ? ++sum : sum);

  @override
  bool operator ==(other) {
    // TODO: implement ==
    return identical(this, other) ||
      other is AppState &&
      runtimeType == other.runtimeType &&
      todos == other.todos &&
      isLoading == other.isLoading;
  }

  void clearCompleted() {
    todos.removeWhere((todo) => todo.complete);
  }

  void toggleAll() {
    final allCompleted = this.allComplete;
    todos.forEach((todo) => todo.complete = !allCompleted);
  }

  @override
  String toString() {
    // TODO: implement toString
    return 'AppState{todos: $todos, isloading: $isLoading}';
  }
}

enum AppTab {todos, stats}

enum ExtraAction {toggleAllComplete, clearCompleted}

class Todo {
  bool complete;
  String id;
  String note;
  String task;

  Todo(this.task, {this.complete = false, this.note = '', String id})
    : this.id = id ?? Uuid().generateV4();

  @override
  // TODO: implement hashCode
  int get hashCode => complete.hashCode ^ task.hashCode ^ note.hashCode ^ id.hashCode;

  @override
  bool operator ==(other) {
    // TODO: implement ==
    return identical(this, other) ||
        other is Todo &&
        runtimeType == other.runtimeType &&
        complete == other.complete &&
        task == other.task &&
        note == other.note &&
        id == other.id;
  }

  @override
  String toString() {
    // TODO: implement toString
    return 'Todo{complete: $complete, task: $task, note: $note, id: $id}';
  }

  TodoEntity toEntity() {
    return TodoEntity(complete, id, note, task);
  }

  static Todo fromEntity(TodoEntity entity) {
    return Todo(entity.task,
      complete: entity.complete ?? false,
      note: entity.note,
      id: entity.id ?? Uuid().generateV4(),
    );
  }
}

enum VisibilityFilter {all, active, completed}










