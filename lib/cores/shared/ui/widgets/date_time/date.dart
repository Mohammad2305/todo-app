import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../utils/models/functions/number_form.dart';
import '../../../themes/app_boxes_decoration.dart';
import '../../../themes/app_text_styles.dart';

class Date extends StatelessWidget {
  const Date({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: 10.w,
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
          decoration: AppBoxDecoration.clockDigital,
          child: Text(
            DateTime.now().year.toString(),
            style: AppTextStyles.textFt24Fw600Cbt,
          ),
        ),
        Text(
          "/",
          style: AppTextStyles.textFt24Fw600Cbt,
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
          decoration: AppBoxDecoration.clockDigital,
          child: Text(
            twoNumber(DateTime.now().month),
            style: AppTextStyles.textFt24Fw600Cbt,
          ),
        ),
        Text(
          "/",
          style: AppTextStyles.textFt24Fw600Cbt,
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
          decoration: AppBoxDecoration.clockDigital,
          child: Text(
            twoNumber(DateTime.now().day),
            style: AppTextStyles.textFt24Fw600Cbt,
          ),
        ),
      ],
    );
  }
}
