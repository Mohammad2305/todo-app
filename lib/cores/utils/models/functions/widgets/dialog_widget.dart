import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget dialogWidget(BuildContext context, Widget child) {
  return Center(
    child: Container(
      margin: EdgeInsets.all(10.sp),
      padding: EdgeInsets.all(10.sp),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.sp),
        color: Colors.white,
      ),
      child: child,
    ),
  );
}
