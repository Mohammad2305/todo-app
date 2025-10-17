import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo/cores/shared/themes/app_boxes_decoration.dart';
import 'package:todo/cores/utils/models/classes/task_info.dart';
import 'package:todo/features/layout/presentation/widgets/task_actions.dart';
import 'package:todo/features/layout/presentation/widgets/task_characters.dart';

class TasksList extends StatelessWidget {
  final ScrollPhysics scrollPhysics;
  final List<TaskMainInfo> list;
  const TasksList({super.key, required this.scrollPhysics, required this.list});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: scrollPhysics,
      shrinkWrap: true,
      itemBuilder: (context, index){
        return Container(
          decoration: AppBoxDecoration.taskCard,
          padding: EdgeInsets.all(10.sp),
          child: Column(
            children: [
              TaskCharacters(tasks: list, iterable: index,),
              Divider(),
              TaskActions(),
            ],
          ),
        ) ;
      },
      separatorBuilder: (context, index)=>SizedBox(height: 10.h,),
      itemCount: list.length,
    );  }
}
