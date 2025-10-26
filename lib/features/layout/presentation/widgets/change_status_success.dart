import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo/cores/shared/themes/app_boxes_decoration.dart';
import 'package:todo/cores/shared/themes/app_text_styles.dart';
import 'package:todo/cores/shared/ui/widgets/buttons/custom_button.dart';
import 'package:todo/cores/utils/models/functions/navigators.dart';

class ChangeStatusSuccess extends StatelessWidget {
  const ChangeStatusSuccess({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 40.h),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          spacing: 10.h,
          children: [
            Icon(Icons.check_circle_outline, size: 100.sp,),
            Text("Task Status Changed Successfully", style: AppTextStyles.textFt16Fw500Cbt),
            CustomButton(
              onTap: (){popBack(context);},
              decoration: AppBoxDecoration.actionButtonDecoration,
              label: 'Finish',
            ),
          ],
        ),
      ),
    );
  }
}
