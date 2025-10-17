import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo/cores/shared/themes/app_text_styles.dart';
import 'package:todo/cores/utils/models/functions/navigators.dart';
import 'package:todo/cores/utils/models/values/tasks_list.dart';
import 'package:todo/features/layout/presentation/widgets/tasks_category.dart';
import '../../../../cores/utils/models/functions/dialog_widget.dart';
import '../../data/models/values/categories.dart';
import 'change_status_success.dart';

class StatusChange extends StatefulWidget {
  final void Function(int index) onChange;
  const StatusChange({super.key, required this.onChange,});

  @override
  State<StatusChange> createState() => _StatusChangeState();
}

int superIndex = 0 ;

class _StatusChangeState extends State<StatusChange> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 10.h,
        children: [
          Text("Change Task Status", style: AppTextStyles.textFt16Fw500Cbt),
          ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: categories.length - 1,
            itemBuilder: (context, index) {
              return TasksCategory(
                  index: index,
                  onTap: () {
                    popBack(context);
                    widget.onChange(index);
                    tasks[superIndex].taskStatus = categories[index].name;
                    showDialog(
                      context: context,
                      builder: (context)=>dialogWidget(context, ChangeStatusSuccess()),
                    );
                  }
              );
            },
            separatorBuilder: (context, index) => SizedBox(height: 10.h),
          ),
        ],
      ),
    );
  }
}
