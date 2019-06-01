import 'package:flutter/material.dart';
import '../todo_lib/todo_lib.dart';
import '../models.dart';
import '../widgets/todo_list.dart';
import '../widgets/typedefs.dart';
import '../widgets/filter_button.dart';
import '../widgets/extra_actions_button.dart';
import '../widgets/stats_counter.dart';


class HomeScreen extends StatefulWidget {

  final AppState appState;
  final TodoAdder addTodo;
  final TodoRemover removeTodo;
  final TodoUpdater updateTodo;
  final Function toggleAll;
  final Function clearCompleted;

  const HomeScreen({Key key, this.appState, this.addTodo, this.removeTodo, this.updateTodo, this.toggleAll, this.clearCompleted}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  VisibilityFilter activeFilter = VisibilityFilter.all;
  AppTab activeTab = AppTab.todos;

  _updateTab(AppTab tab) {
    setState(() {
      activeTab = tab;
    });
  }

  _updateVisibility(VisibilityFilter filter) {
    setState(() {
      activeFilter = filter;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(ArchSampleLocalizations.of(context).title),
        actions: <Widget>[
          FilterButton(
            isActive: activeTab == AppTab.todos,
            activeFilter: activeFilter,
            onSelected: _updateVisibility,
          ),
          ExtraActionsButton(
            allComplete: widget.appState.allComplete,
            hasCompletedTodos: widget.appState.hasComletedTodos,
            onSelected: (action) {
              if (action == ExtraAction.toggleAllComplete) {
                widget.toggleAll();
              } else if (action == ExtraAction.clearCompleted) {
                widget.clearCompleted();
              }
            },
          )
        ],
      ),
      body: activeTab == AppTab.todos
          ? TodoList(
              filteredTodos: widget.appState.filteredTodos(activeFilter),
              loading: widget.appState.isLoading,
              removeTodo: widget.removeTodo,
              addTodo: widget.addTodo,
              updateTodo: widget.updateTodo,
            )
          : StatsCounter(
              numActive: widget.appState.numActive,
              numCompleted: widget.appState.numCompleted,
            ),
      floatingActionButton: FloatingActionButton(
        key: ArchSampleKeys.addTodoFab,
        onPressed: () {
          Navigator.pushNamed(context, ArchSampleRoutes.addTodo);
        },
        child: Icon(Icons.add),
        tooltip: ArchSampleLocalizations.of(context).addTodo,
      ),
      bottomNavigationBar: BottomNavigationBar(
          key: ArchSampleKeys.tabs,
          currentIndex: AppTab.values.indexOf(activeTab),
          onTap: (index) {
            _updateTab(AppTab.values[index]);
          },
          items:AppTab.values.map((tab) {
            return BottomNavigationBarItem(
                icon: Icon(
                  tab == AppTab.todos ? Icons.list : Icons.show_chart,
                  key: tab == AppTab.stats ? ArchSampleKeys.statsTab : ArchSampleKeys.todoTab,
                ),
                title: Text(
                  tab == AppTab.stats ? ArchSampleLocalizations.of(context).stats : ArchSampleLocalizations.of(context).todos,
                ),
            );
          }).toList(),
      ),
    );
  }
}
