import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo/cores/shared/themes/app_text_styles.dart';
import 'package:todo/features/layout/presentation/widgets/status_change.dart';
import '../../../../cores/utils/models/functions/dialog_widget.dart';
import '../../data/models/values/categories.dart';

class TaskActions extends StatefulWidget {
  const TaskActions({super.key,});

  @override
  State<TaskActions> createState() => _TaskActionsState();
}

int superIndex = 0 ;

class _TaskActionsState extends State<TaskActions> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 15.sp, vertical: 8),
          decoration: BoxDecoration(
            color: categories[superIndex].mainColor,
            borderRadius: BorderRadius.circular(10.r),
          ),
          child: Text(
            categories[superIndex].name,
            style: AppTextStyles.textFtS12FW500Cmc.copyWith(color: Colors.white),
          ),
        ),
        TextButton(
          onPressed: () {
            showDialog(
              barrierLabel: "Data",
              context: context,
              builder: (context)=>dialogWidget(context, StatusChange(
                onChange: (index){
                  setState(() {
                    superIndex = index;
                  });
                },
              )),
            );
          },
          child: Text(
            "Change Status",
            style: AppTextStyles.textFtS12FW500Cmc.copyWith(
              decoration: TextDecoration.underline,
            ),
          ),
        ),
      ],
    );  }
}
