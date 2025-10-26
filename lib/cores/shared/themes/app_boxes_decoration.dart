import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../constants/app_colors.dart';

class AppBoxDecoration {
  static BoxDecoration actionButtonDecoration = BoxDecoration(
    color: AppColors.mainColor,
    borderRadius: BorderRadius.circular(12.r),
  );

  static BoxDecoration changeProfile(String image, double thickness) =>
      BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: AppColors.mainColor, width: thickness),
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
        ),
      );

  static BoxDecoration profile(double thickness) => BoxDecoration(
    shape: BoxShape.circle,
    border: Border.all(color: AppColors.mainColor, width: thickness),
  );

  static BoxDecoration bottomSheetDecoration = BoxDecoration(
    borderRadius: BorderRadius.circular(20.r),
  );

  static BoxDecoration taskCard = BoxDecoration(
      border: BoxBorder.all(color: Colors.black),
      borderRadius: BorderRadius.circular(12.r)
  );

  static BoxDecoration bottomNavBarItem(int index, int currentIndex) => BoxDecoration(
    color: currentIndex==index ? AppColors.mainColor : Color(0xffE7EBF7),
    borderRadius: BorderRadius.circular(100.r),
  );

  static BoxDecoration clockDigital = BoxDecoration(
    borderRadius: BorderRadius.circular(20.r),
    border: Border.all(color: AppColors.mainColor, width: 3.sp)
  );
}
