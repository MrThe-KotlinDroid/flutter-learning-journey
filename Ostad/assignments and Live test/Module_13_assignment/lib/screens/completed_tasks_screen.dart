import 'package:flutter/material.dart';
import '../data/task_data.dart';
import '../models/task.dart';

class CompletedTasksScreen extends StatefulWidget {
  const CompletedTasksScreen({super.key});

  @override
  State<CompletedTasksScreen> createState() => _CompletedTasksScreenState();
}

class _CompletedTasksScreenState extends State<CompletedTasksScreen> {
  @override
  Widget build(BuildContext context) {
    final completedTasks = TaskData.completedTasks;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          children: [
            const Icon(Icons.check_box, color: Colors.blue, size: 28),
            const SizedBox(width: 8),
            const Text(
              'Taski',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Completed Tasks',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    setState(() {
                      TaskData.deleteAllCompleted();
                    });
                  },
                  child: const Text(
                    'Delete all',
                    style: TextStyle(color: Colors.red, fontSize: 16),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Expanded(
              child: completedTasks.isEmpty
                  ? _buildEmptyState()
                  : ListView.builder(
                      itemCount: completedTasks.length,
                      itemBuilder: (context, index) {
                        final task = completedTasks[index];
                        return _buildTaskItem(task);
                      },
                    ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(color: Colors.grey[200]!, width: 1),
          ),
        ),
        child: BottomNavigationBar(
          currentIndex: 2,
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.grey[400],
          selectedFontSize: 12,
          unselectedFontSize: 12,
          elevation: 0,
          onTap: (index) {
            if (index == 0) {
              Navigator.pushReplacementNamed(context, '/');
            } else if (index == 1) {
              Navigator.pushNamed(context, '/create').then((_) => setState(() {}));
            }
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.format_list_bulleted),
              label: 'Todo',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add_box_outlined),
              label: 'Create',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.check_box_outlined),
              label: 'Done',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildEmptyState() {
    return Center(
      child: Text(
        'No completed tasks yet.',
        style: TextStyle(color: Colors.grey[500], fontSize: 16),
      ),
    );
  }

  Widget _buildTaskItem(Task task) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
      decoration: BoxDecoration(
        color: const Color(0xFFF5F7F9),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          Checkbox(
            value: task.isCompleted,
            onChanged: (value) {
              setState(() {
                TaskData.toggleTaskStatus(task);
              });
            },
            side: BorderSide(color: Colors.grey[300]!, width: 2),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
          ),
          Expanded(
            child: Text(
              task.title,
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey[400],
                decoration: TextDecoration.lineThrough,
              ),
            ),
          ),
          IconButton(
            icon: const Icon(Icons.delete_outline, color: Colors.red, size: 24),
            onPressed: () {
              setState(() {
                TaskData.deleteTask(task);
              });
            },
          ),
        ],
      ),
    );
  }
}
