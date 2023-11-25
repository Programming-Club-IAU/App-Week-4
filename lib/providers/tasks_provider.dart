import 'dart:js';

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

  List<Tasks> get _allTasks => allTasks;

  void createTask(String title, String description, bool isDone) {
    Tasks addTask =
        Tasks(title: title, description: description, isDone: false);
    allTasks.add(addTask);
    Navigator.of(context as BuildContext).pop();

    notifyListeners();
  }

  void removeTask(int index) {
    _allTasks.removeAt(index);
    notifyListeners();
  }

  void handleToDoChange(int index) {
    _allTasks[index].isDone = !_allTasks[index].isDone;
    notifyListeners();
  }
}
