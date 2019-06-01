import 'package:flutter/material.dart';
import '../models.dart';
import '../todo_lib/todo_lib.dart';

class ExtraActionsButton extends StatelessWidget {

  final PopupMenuItemSelected<ExtraAction> onSelected;
  final bool allComplete;
  final bool hasCompletedTodos;

  const ExtraActionsButton({Key key, this.onSelected, this.allComplete = false, this.hasCompletedTodos = true}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<ExtraAction>(
      key: ArchSampleKeys.extraActionsButton,
      onSelected: onSelected,
      itemBuilder: (BuildContext context) => <PopupMenuItem<ExtraAction>>[
        PopupMenuItem<ExtraAction>(
          key: ArchSampleKeys.toggleAll,
          value: ExtraAction.toggleAllComplete,
          child: Text(
            allComplete ? ArchSampleLocalizations.of(context).markAllIncomplete : ArchSampleLocalizations.of(context).markAllComplete
          ),
        ),
        PopupMenuItem<ExtraAction>(
          key: ArchSampleKeys.clearCompleted,
          value: ExtraAction.clearCompleted,
          child: Text(
            ArchSampleLocalizations.of(context).clearCompleted
          ),
        ),
      ],
    );
  }
}
