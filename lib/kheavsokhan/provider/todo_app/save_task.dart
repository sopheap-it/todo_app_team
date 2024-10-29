import 'package:flutter/material.dart';
import 'package:todo_app_team/kheavsokhan/provider/todo_app/task_model.dart';

class SaveTask extends ChangeNotifier {
  final List<Task> _task = [
    Task(title: "Task", isCompleted: false)
  ];
  List<Task> get tasks => _task;

  void addTask(Task task){
    tasks.add(task);
    notifyListeners();
  }

  void checkTask(int index){
    tasks[index].isDone();
    notifyListeners();
  }

  void removeTask(Task task){
    tasks.remove(task);
    notifyListeners();
  }
}
