import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo/cores/shared/themes/app_text_styles.dart';
import 'package:todo/cores/utils/models/functions/navigators.dart';
import 'package:todo/features/layout/data/models/values/categories.dart';
import '../../../../cores/utils/models/values/tasks_list.dart';
import '../../../layout/presentation/widgets/tasks_list.dart';

class TaskCategoryView extends StatelessWidget {
  final int currentIndex;
  const TaskCategoryView({super.key, required this.currentIndex});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){
            popBack(context);
          }, 
          icon: Icon(Icons.chevron_left),
        ),
        title: Text(
          categories[currentIndex].name,
          style: AppTextStyles.textFt16Fw500Cbt,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        child: TasksList(
          scrollPhysics: NeverScrollableScrollPhysics(),
          list: tasks.where((task){
            return task.taskStatus == categories[currentIndex].name;
          }).toList(),
        ),
      ),
    );
  }
}
