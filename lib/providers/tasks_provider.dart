import 'package:flutter/material.dart';
import 'package:todo_list/models/task_model.dart';

class TaskList {
  List<Tasks> _allTasks = [];
  TaskList(this._allTasks);
  Tasks operator [](int index) {
    return _allTasks[index];
  }

  int get length {
    return _allTasks.length;
  }
}

class TasksProvider extends ChangeNotifier {
  List<Tasks> allTasks = [
    Tasks(
        title: 'First Task', description: 'Complete the Tasks', isDone: false),
    Tasks(title: 'second Task', description: 'Push the task', isDone: true),
    Tasks(title: 'third Task', description: 'Complete the Tasks', isDone: true),
    Tasks(
        title: 'forth Task', description: 'Complete the Tasks', isDone: false),
    Tasks(
        title: 'Fifth Task', description: 'Complete the Tasks', isDone: false),
  ];

  get _allTasks => allTasks;

  get title => title;

  get description => description;

  void createTask(int index) {
    _allTasks.createTask(title, description);
    notifyListeners();
  }

  void removeTask(int index) {
    _allTasks.remove(_allTasks[index]);
    notifyListeners();
  }

  void handleToDoChange(Tasks allTasks) {
    _allTasks.isDone = !allTasks.isDone;
  }
}
