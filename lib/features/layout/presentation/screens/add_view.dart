import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo/cores/shared/constants/app_colors.dart';
import 'package:todo/cores/shared/themes/app_boxes_decoration.dart';
import 'package:todo/cores/shared/ui/widgets/buttons/custom_button.dart';
import 'package:todo/cores/utils/models/classes/task_info.dart';
import 'package:todo/features/layout/data/models/objects/input_field_object.dart';
import 'package:todo/features/layout/data/models/values/categories.dart';
import '../widgets/add_task_info.dart';

class AddView extends StatelessWidget {
  const AddView({super.key});

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> formKey = GlobalKey();
    return Form(
      key: formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 10.h,
        children: [
          AddTaskInfo(),
          CustomButton(
            decoration: AppBoxDecoration.actionButtonDecoration.copyWith(color: AppColors.mainColor),
            onTap: () {
              if(formKey.currentState!.validate()){
                categories[0].tasks?.add(
                  TaskMainInfo(
                    name: AddTask.taskName.controller.text,
                    description: AddTask.taskNote.controller.text,
                    dateTime: AddTask.chooseDate ?? DateTime.now(),
                    startTime: AddTask.startTime ?? TimeOfDay.now(),
                    endTime: AddTask.endTime ?? TimeOfDay.now(),
                    taskStatus: "New Tasks",
                  )
                );
                debugPrint(categories[0].tasks?.length.toString());
              }
            },
            label: "Create Task",
          ),
        ],
      ),
    );
  }
}
