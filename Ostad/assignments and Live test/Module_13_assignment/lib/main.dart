import 'package:flutter/material.dart';
import 'screens/todo_screen.dart';
import 'screens/create_task_screen.dart';
import 'screens/completed_tasks_screen.dart';

void main() {
  runApp(const TodoApp());
}

class TodoApp extends StatelessWidget {
  const TodoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Todo App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Inter',
        scaffoldBackgroundColor: Colors.white,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const TodoScreen(),
        '/create': (context) => const CreateTaskScreen(),
        '/completed': (context) => const CompletedTasksScreen(),
      },
    );
  }
}
