import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';

class TasksPage extends StatefulWidget {
  const TasksPage({
    Key? key,
    required this.Goback,
  }) : super(key: key);
  final void Function(int) Goback;
  @override
  State<TasksPage> createState() => _TasksPageState();
}

class _TasksPageState extends State<TasksPage> {
  DateTime _selectedDate = DateTime.now();
  void _onDateChange(DateTime date) {
    this.setState(() {
      this._selectedDate = date;
    });
  }

  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
