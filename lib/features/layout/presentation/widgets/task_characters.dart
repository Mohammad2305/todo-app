import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo/cores/shared/constants/app_colors.dart';
import 'package:todo/cores/shared/themes/app_text_styles.dart';
import 'package:todo/cores/utils/models/classes/task_info.dart';
import 'package:todo/cores/utils/models/functions/dates.dart';

class TaskCharacters extends StatelessWidget {
  final List<TaskMainInfo> tasks;
  final int iterable;
  const TaskCharacters({super.key, required this.tasks, required this.iterable});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: 150.w,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                tasks[iterable].name,
                style: AppTextStyles.textFt16Fw500Cbt,
              ),
              Text(
                tasks[iterable].description,
                style: AppTextStyles.textFtS12FW400Cbt.copyWith(
                  color: AppColors.textDescriptionColor,
                ),
                overflow: TextOverflow.ellipsis,
                softWrap: true,
              ),
            ],
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              customDateForm(tasks[iterable].dateTime),
              style: AppTextStyles.textFtS12FW500Cmc.copyWith(
                color: AppColors.textDescriptionColor,
              ),
            ),
            Text(
              "${customTimeForm(tasks[iterable].startTime)} - ${customTimeForm(tasks[iterable].endTime)}",
              style: AppTextStyles.textFtS12FW500Cmc.copyWith(
                color: AppColors.textDescriptionColor,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
