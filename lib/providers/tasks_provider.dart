import 'package:flutter/material.dart';
import 'package:todo_list/models/task_model.dart';

class TasksProvider extends ChangeNotifier {
  List<Tasks> allTasks = [
    Tasks(
        title: 'First Task', description: 'Complete the Tasks', isDone: false),
    Tasks(title: 'First Task', description: 'Complete the Tasks', isDone: true),
    Tasks(title: 'First Task', description: 'Complete the Tasks', isDone: true),
    Tasks(
        title: 'First Task', description: 'Complete the Tasks', isDone: false),
    Tasks(
        title: 'First Task', description: 'Complete the Tasks', isDone: false),
  ];

  List<Tasks> get tasks => allTasks;

  List<Tasks> addTask = [];

  void createTask(Tasks task) {
    allTasks.add(task);
  }

  void removeTask(Tasks task) {
    allTasks.remove(task);
  }
}
