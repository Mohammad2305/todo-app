import 'package:flutter/material.dart';
import '../classes/task_info.dart';

List<TaskMainInfo> tasks = [
  TaskMainInfo(
    name: "Mohammed Nasser",
    description: "Flutter programmer",
    dateTime: DateTime.now(),
    startTime: TimeOfDay(hour: 12, minute: 0),
    endTime: TimeOfDay(hour: 20, minute: 50),
    taskStatus: "New Tasks",
  ),
];
