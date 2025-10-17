import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../constants/app_colors.dart';

class AppTextStyles {
  static final TextStyle textFt24Fw600Cbt = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeight.w600,
  );

  static final TextStyle textFt16Fw500Cbt = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w500,
  );

  static final TextStyle textFtS14FW500Cbt = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w500,
  );

  static final TextStyle textFtS14FW400Cg = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
    color: Color(0xff797979)
  );

  static final TextStyle textFtS12FW500Cmc = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeight.w500,
    color: AppColors.mainColor
  );

  static final TextStyle textFtS12FW400Cbt = TextStyle(
      fontSize: 12.sp,
      fontWeight: FontWeight.w400,
  );

  static final TextStyle textFt10FW500Cbt = TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 10.sp
  );
}
