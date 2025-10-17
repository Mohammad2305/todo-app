import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo/cores/shared/themes/app_text_styles.dart';
import '../../../layout/data/models/values/categories.dart';

class TasksCategoryItem extends StatelessWidget {
  final int index;
  final void Function() onTap;
  const TasksCategoryItem({super.key, required this.index, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(10.h),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.sp),
            color: categories[index].mainColor
        ),
        child: Row(
          spacing: 10.w,
          children: [
            Container(
              padding: EdgeInsets.all(10.sp),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.sp),
                  color: categories[index].subColor
              ),
              width: 40.w,
              height: 40.h,
              child: categories[index].icon,
            ),
            Column(
              spacing: 2.h,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  categories[index].name,
                  style: AppTextStyles.textFtS14FW500Cbt.copyWith(color: Colors.white),
                ),
                Text(
                  "${categories[index].tasks?.length} tasks",
                  style: AppTextStyles.textFtS12FW500Cmc.copyWith(color: categories[index].textColor),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
