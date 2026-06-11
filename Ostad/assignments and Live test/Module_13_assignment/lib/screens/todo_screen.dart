import 'package:flutter/material.dart';
import '../data/task_data.dart';
import '../models/task.dart';

class TodoScreen extends StatefulWidget {
  const TodoScreen({super.key});

  @override
  State<TodoScreen> createState() => _TodoScreenState();
}

class _TodoScreenState extends State<TodoScreen> {
  @override
  Widget build(BuildContext context) {
    final todoTasks = TaskData.todoTasks;

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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(
              text: const TextSpan(
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontFamily: 'Inter',
                ),
                children: [
                  TextSpan(text: 'Welcome, '),
                  TextSpan(
                    text: 'Abrar.',
                    style: TextStyle(color: Colors.blue),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 4),
            Text(
              todoTasks.isEmpty
                  ? 'Create tasks to achieve more.'
                  : "You've got ${todoTasks.length} tasks to do.",
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey[500],
              ),
            ),
            const SizedBox(height: 24),
            Expanded(
              child: todoTasks.isEmpty
                  ? _buildEmptyState()
                  : ListView.builder(
                      itemCount: todoTasks.length,
                      itemBuilder: (context, index) {
                        final task = todoTasks[index];
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
          currentIndex: 0,
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.grey[400],
          selectedFontSize: 12,
          unselectedFontSize: 12,
          elevation: 0,
          onTap: (index) {
            if (index == 1) {
              Navigator.pushNamed(context, '/create').then((_) => setState(() {}));
            } else if (index == 2) {
              Navigator.pushReplacementNamed(context, '/completed');
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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.assignment_outlined, size: 100, color: Colors.grey[300]),
          const SizedBox(height: 16),
          Text(
            'You have no task listed.',
            style: TextStyle(color: Colors.grey[500], fontSize: 16),
          ),
          const SizedBox(height: 24),
          ElevatedButton.icon(
            onPressed: () {
              Navigator.pushNamed(context, '/create').then((_) => setState(() {}));
            },
            icon: const Icon(Icons.add),
            label: const Text('Create task'),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue[50],
              foregroundColor: Colors.blue,
              elevation: 0,
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),
        ],
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
                fontWeight: FontWeight.w500,
                color: Colors.grey[800],
              ),
            ),
          ),
          IconButton(
            icon: Icon(Icons.more_horiz, color: Colors.grey[300], size: 28),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
