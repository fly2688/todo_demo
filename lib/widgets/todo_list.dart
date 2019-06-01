import 'package:flutter/material.dart';
import '../models.dart';
import 'typedefs.dart';
import '../todo_lib/todo_lib.dart';
import 'todo_item.dart';
import '../screens/detail_screen.dart';

class TodoList extends StatelessWidget {

  final List<Todo> filteredTodos;
  final bool loading;
  final TodoAdder addTodo;
  final TodoRemover removeTodo;
  final TodoUpdater updateTodo;

  const TodoList({Key key, this.filteredTodos, this.loading, this.addTodo, this.removeTodo, this.updateTodo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: loading ?
          Center(
            child: CircularProgressIndicator(
              key: ArchSampleKeys.todosLoading,
            ),
          ) :
          ListView.builder(
            key: ArchSampleKeys.todoList,
            itemCount: filteredTodos.length,
            itemBuilder: (BuildContext context, int index) {
              final todo = filteredTodos[index];

              return TodoItem(
                todo: todo,
                onDismissed: (direction) {
                  _removeTodo(context, todo);
                },
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) {
                        return DetailScreen(
                            todo: todo,
                            onDelete: () => _removeTodo(context, todo),
                            addTodo: addTodo,
                            updateTodo: updateTodo
                        );
                      },
                    )
                  );
                },
                onCheckboxChanged: (complete) {
                  updateTodo(todo, complete: !todo.complete);
                },
              );
            },
          )
    );
  }

  void _removeTodo(BuildContext context, Todo todo) {
    removeTodo(todo);

    Scaffold.of(context).showSnackBar(
        SnackBar(
          key: ArchSampleKeys.snackbar,
          duration: Duration(seconds: 2),
          backgroundColor: Theme.of(context).backgroundColor,
          content: Text(
            ArchSampleLocalizations.of(context).todoDeleted(todo.task),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          action: SnackBarAction(
              label: ArchSampleLocalizations.of(context).undo,
              onPressed: () {
                addTodo(todo);
              }
          ),
        ),
    );
  }
}

