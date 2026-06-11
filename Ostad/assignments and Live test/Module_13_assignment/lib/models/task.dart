class Task {
  String title;
  String note;
  bool isCompleted;

  Task({
    required this.title,
    this.note = '',
    this.isCompleted = false,
  });
}
