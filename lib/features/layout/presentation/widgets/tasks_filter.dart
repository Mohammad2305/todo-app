import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo/cores/shared/constants/app_colors.dart';
import 'package:todo/cores/shared/themes/app_text_styles.dart';
import 'package:todo/features/layout/data/models/values/categories.dart';

import '../../data/models/functions/drop_menu_item.dart';

class TasksFilter extends StatelessWidget {
  const TasksFilter({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("Recent Tasks", style: AppTextStyles.textFt16Fw500Cbt),
        DropdownMenu(
          width: 150.w,
          leadingIcon: Icon(Icons.filter_alt_outlined),
          trailingIcon: Icon(Icons.keyboard_arrow_down_outlined),
          selectedTrailingIcon: Icon(Icons.keyboard_arrow_up_outlined),
          label: Text("Filter", style: AppTextStyles.textFtS14FW400Cg),
          textStyle: AppTextStyles.textFt10FW500Cbt,
          dropdownMenuEntries: [
            dropItemSpecial(AppColors.mainColor, "All Tasks", "All Tasks"),
            ...List.generate(
              categories.length-1,
              (index){
                return dropItem(index);
              }
            ),
          ],
        ),
      ],
    );  }
}
