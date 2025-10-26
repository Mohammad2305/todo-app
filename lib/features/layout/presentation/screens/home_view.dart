import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo/features/layout/presentation/widgets/grid_task_categories.dart';
import 'package:todo/features/layout/presentation/widgets/user_welcome.dart';
import '../../../../cores/utils/models/values/tasks_list.dart';
import '../widgets/tasks_filter.dart';
import '../widgets/tasks_list.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 10.h,
      children: [
        UserWelcome(),
        GridTaskCategories(rowItemCount: 2),
        Divider(),
        TasksFilter(),
        TasksList(
          scrollPhysics: NeverScrollableScrollPhysics(),
          list: tasks,
        ),
      ],
    );
  }
}
