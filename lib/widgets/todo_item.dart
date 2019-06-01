import 'package:flutter/material.dart';
import '../models.dart';
import '../todo_lib/todo_lib.dart';

class TodoItem extends StatelessWidget {

  final DismissDirectionCallback onDismissed;
  final GestureTapCallback onTap;
  final ValueChanged<bool> onCheckboxChanged;
  final Todo todo;

  const TodoItem({Key key, this.onDismissed, this.onTap, this.onCheckboxChanged, this.todo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dismissible(
        key: ArchSampleKeys.todoItem(todo.id),
        onDismissed: onDismissed,
        background: new Container(color: Colors.red),
        child: ListTile(
          onTap: onTap,
          leading: Checkbox(
              key: ArchSampleKeys.todoItemCheckbox(todo.id),
              value: todo.complete,
              onChanged: onCheckboxChanged,
          ),
          title: Text(
            todo.task,
            key: ArchSampleKeys.todoItemTask(todo.id),
            style: Theme.of(context).textTheme.title,
          ),
          subtitle: Text(
            todo.note,
            key: ArchSampleKeys.todoItemNote(todo.id),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.subhead,
          ),
        ),
    );
  }
}
