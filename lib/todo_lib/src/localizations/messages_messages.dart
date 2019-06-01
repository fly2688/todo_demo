// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a messages locale. All the
// messages from the main program should be duplicated here with the same
// function name.

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

// ignore: unnecessary_new
final messages = new MessageLookup();

// ignore: unused_element
final _keepAnalysisHappy = Intl.defaultLocale;

// ignore: non_constant_identifier_names
typedef MessageIfAbsent(String message_str, List args);

class MessageLookup extends MessageLookupByLibrary {
  get localeName => 'messages';

  static m0(task) => "Deleted \"${task}\"";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function> {
    "activeTodos" : MessageLookupByLibrary.simpleMessage("Active Todos"),
    "clearCompleted" : MessageLookupByLibrary.simpleMessage("Clear completed"),
    "completedTodos" : MessageLookupByLibrary.simpleMessage("Completed Todos"),
    "deleteTodo" : MessageLookupByLibrary.simpleMessage("Delete Todo"),
    "editTodo" : MessageLookupByLibrary.simpleMessage("Edit Todo"),
    "emptyTodoError" : MessageLookupByLibrary.simpleMessage("Please enter some text"),
    "filterTodos" : MessageLookupByLibrary.simpleMessage("Filter Todos"),
    "markAllComplete" : MessageLookupByLibrary.simpleMessage("Mark all complete"),
    "markAllIncomplete" : MessageLookupByLibrary.simpleMessage("Mark all incomplete"),
    "newTodoHint" : MessageLookupByLibrary.simpleMessage("What needs to be done?"),
    "notesHint" : MessageLookupByLibrary.simpleMessage("Additional Notes..."),
    "saveChanges" : MessageLookupByLibrary.simpleMessage("Save changes"),
    "showActive" : MessageLookupByLibrary.simpleMessage("Show Active"),
    "showAll" : MessageLookupByLibrary.simpleMessage("Show All"),
    "showCompleted" : MessageLookupByLibrary.simpleMessage("Show Completed"),
    "stats" : MessageLookupByLibrary.simpleMessage("Stats"),
    "title" : MessageLookupByLibrary.simpleMessage("Lee App"),
    "todoDeleted" : m0,
    "todoDetails" : MessageLookupByLibrary.simpleMessage("Todo Details"),
    "todos" : MessageLookupByLibrary.simpleMessage("Todos"),
    "undo" : MessageLookupByLibrary.simpleMessage("Undo")
  };
}
