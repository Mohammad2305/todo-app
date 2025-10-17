import 'package:flutter/material.dart';
import 'package:todo/cores/utils/models/classes/task_info.dart';

class TasksCategory {
  TasksCategory({
    required this.name,
    this.tasks,
    required this.icon,
    required this.mainColor,
    required this.subColor,
    required this.textColor,
  });

  final String name;
  final List<TaskMainInfo>? tasks;
  final Widget icon;
  final Color mainColor;
  final Color subColor;
  final Color textColor;
}
