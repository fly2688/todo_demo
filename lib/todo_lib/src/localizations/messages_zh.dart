// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a zh locale. All the
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
  get localeName => 'zh';

  static m0(task) => "删除 \"${task}\"";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function> {
    "activeTodos" : MessageLookupByLibrary.simpleMessage("未完成"),
    "clearCompleted" : MessageLookupByLibrary.simpleMessage("清楚完成"),
    "completedTodos" : MessageLookupByLibrary.simpleMessage("已完成"),
    "deleteTodo" : MessageLookupByLibrary.simpleMessage("删除待办"),
    "editTodo" : MessageLookupByLibrary.simpleMessage("编辑待办"),
    "emptyTodoError" : MessageLookupByLibrary.simpleMessage("请写一些内容"),
    "filterTodos" : MessageLookupByLibrary.simpleMessage("过滤待办"),
    "markAllComplete" : MessageLookupByLibrary.simpleMessage("全部完成"),
    "markAllIncomplete" : MessageLookupByLibrary.simpleMessage("全部不完成"),
    "newTodoHint" : MessageLookupByLibrary.simpleMessage("你需要做什么?"),
    "notesHint" : MessageLookupByLibrary.simpleMessage("额外备注..."),
    "saveChanges" : MessageLookupByLibrary.simpleMessage("保存变更"),
    "showActive" : MessageLookupByLibrary.simpleMessage("展示未完成"),
    "showAll" : MessageLookupByLibrary.simpleMessage("展示所有"),
    "showCompleted" : MessageLookupByLibrary.simpleMessage("展示完成"),
    "stats" : MessageLookupByLibrary.simpleMessage("总和"),
    "title" : MessageLookupByLibrary.simpleMessage("李 App"),
    "todoDeleted" : m0,
    "todoDetails" : MessageLookupByLibrary.simpleMessage("待办详情"),
    "todos" : MessageLookupByLibrary.simpleMessage("待办"),
    "undo" : MessageLookupByLibrary.simpleMessage("取消")
  };
}
