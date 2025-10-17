import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo/cores/shared/constants/app_colors.dart';
import 'package:todo/cores/shared/themes/app_boxes_decoration.dart';
import 'package:todo/cores/shared/ui/widgets/custom_button.dart';
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

              }
            },
            label: "Create Task",
          ),
        ],
      ),
    );
  }
}
