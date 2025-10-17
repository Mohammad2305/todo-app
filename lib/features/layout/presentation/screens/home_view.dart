import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo/features/auth/presentation/widgets/task_categories.dart';
import 'package:todo/features/layout/presentation/widgets/tasks_filter.dart';
import 'package:todo/features/layout/presentation/widgets/tasks_list.dart';
import 'package:todo/features/layout/presentation/widgets/user_welcome.dart';
import '../../../../cores/utils/models/values/tasks_list.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 10.h,
      children: [
        UserWelcome(),
        TaskCategories(rowItemCount: 2),
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
