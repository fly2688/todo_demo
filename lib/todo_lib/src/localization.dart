import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';

import 'localizations/messages_all.dart';

/**
 *:todo_demo lee$ flutter pub pub run intl_translation:extract_to_arb --output-dir=lib/todo_lib/src/localizations lib/todo_lib/src/localization.dart

 *todo_demo lee$ flutter pub pub run intl_translation:generate_from_arb --output-dir=lib/todo_lib/src/localizations --no-use-deferred-loading lib/todo_lib/src/localization.dart lib/todo_lib/src/localizations/intl_*.arb

 * **/

class ArchSampleLocalizations {

  static Future<ArchSampleLocalizations> load(Locale locale) {
    final String name = locale.countryCode.isEmpty ? locale.languageCode : locale.toString();
    final String localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((b) {
      Intl.defaultLocale = localeName;
      return new ArchSampleLocalizations();
    });
  }

  static ArchSampleLocalizations of(BuildContext context) {
    return Localizations.of<ArchSampleLocalizations>(context, ArchSampleLocalizations);
  }

  String get title => Intl.message(
      'Lee App',
      name: 'title',
      args: [],
  );

  String get todos => Intl.message(
    'Todos',
    name: 'todos',
    args: [],
    desc: ''
  );

  String get stats => Intl.message(
    'Stats',
    name: 'stats',
    args: [],
    desc: ''
  );

  String get addTodo => Intl.message(
      'Add Todo',
      name: 'addtodo',
      args: [],
      desc: ''
  );

  String get editTodo => Intl.message(
      'Edit Todo',
      name: 'editTodo',
      args: [],
      desc: ''
  );

  String get todoDetails => Intl.message(
      'Todo Details',
      name: 'todoDetails',
      args: [],
      desc: ''
  );

  String todoDeleted(String task) => Intl.message(
    'Deleted "$task"',
    name: 'todoDeleted',
    args: [task],
  );

  String get undo => Intl.message(
      'Undo',
      name: 'undo',
      args: [],
      desc: ''
  );

  String get newTodoHint => Intl.message(
      'What needs to be done?',
      name: 'newTodoHint',
      args: [],
      desc: ''
  );
  String get emptyTodoError => Intl.message(
      'Please enter some text',
      name: 'emptyTodoError',
      args: [],
      desc: ''
  );
  String get notesHint => Intl.message(
      'Additional Notes...',
      name: 'notesHint',
      args: [],
      desc: ''
  );
  String get saveChanges => Intl.message(
      'Save changes',
      name: 'saveChanges',
      args: [],
      desc: ''
  );
  String get deleteTodo => Intl.message(
      'Delete Todo',
      name: 'deleteTodo',
      args: [],
      desc: ''
  );
  String get filterTodos => Intl.message(
      'Filter Todos',
      name: 'filterTodos',
      args: [],
      desc: ''
  );
  String get showAll => Intl.message(
      'Show All',
      name: 'showAll',
      args: [],
      desc: ''
  );
  String get showActive => Intl.message(
      'Show Active',
      name: 'showActive',
      args: [],
      desc: ''
  );
  String get showCompleted => Intl.message(
      'Show Completed',
      name: 'showCompleted',
      args: [],
      desc: ''
  );
  String get markAllIncomplete => Intl.message(
      'Mark all incomplete',
      name: 'markAllIncomplete',
      args: [],
      desc: ''
  );
  String get markAllComplete => Intl.message(
      'Mark all complete',
      name: 'markAllComplete',
      args: [],
      desc: ''
  );
  String get clearCompleted => Intl.message(
      'Clear completed',
      name: 'clearCompleted',
      args: [],
      desc: ''
  );
  String get completedTodos => Intl.message(
      'Completed Todos',
      name: 'completedTodos',
      args: [],
      desc: ''
  );
  String get activeTodos => Intl.message(
      'Active Todos',
      name: 'activeTodos',
      args: [],
      desc: ''
  );
}

class ArchSampleLocalizationsDelegate extends LocalizationsDelegate<ArchSampleLocalizations> {
  @override
  bool isSupported(Locale locale) {
    return ['en', 'zh'].contains(locale.languageCode);
  }

  @override
  Future<ArchSampleLocalizations> load(Locale locale) {
    return ArchSampleLocalizations.load(locale);
  }

  @override
  bool shouldReload(LocalizationsDelegate<ArchSampleLocalizations> old) {
    return false;
  }

}