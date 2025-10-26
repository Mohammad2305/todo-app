import 'package:todo/features/layout/data/models/values/categories.dart';
import '../classes/task_info.dart';

List<TaskMainInfo> tasks = [
  ...?categories[0].tasks,
  ...?categories[1].tasks,
  ...?categories[2].tasks,
  ...?categories[3].tasks,
];
