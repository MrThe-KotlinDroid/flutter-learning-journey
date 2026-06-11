import '../models/task.dart';

class TaskData {
  static final List<Task> _tasks = [];

  static List<Task> get tasks => _tasks;
  static List<Task> get todoTasks => _tasks.where((t) => !t.isCompleted).toList();
  static List<Task> get completedTasks => _tasks.where((t) => t.isCompleted).toList();

  static void addTask(Task task) {
    _tasks.add(task);
  }

  static void toggleTaskStatus(Task task) {
    task.isCompleted = !task.isCompleted;
  }

  static void deleteTask(Task task) {
    _tasks.remove(task);
  }

  static void deleteAllCompleted() {
    _tasks.removeWhere((t) => t.isCompleted);
  }
}
