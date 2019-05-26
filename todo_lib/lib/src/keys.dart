import 'package:flutter/widgets.dart';

class ArchSampleKeys {
  //Home Screens
  static final homeScreen = const Key('__homeScreen__');
  static final addTodoFab = const Key('__addTodoFab__');
  static final snackbar = const Key('__snackbar__');
  static Key snackbarAction(String id) => Key('__snackbar_action_${id}__');

  //Tabs
  static final tabs = const Key('__tabs__');
  static final todoTab = const Key('__todoTab__');
  static final statsTab = const Key('__statsTab__');
}