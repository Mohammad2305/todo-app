import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo/cores/shared/themes/app_boxes_decoration.dart';
import 'package:todo/cores/shared/themes/app_text_styles.dart';
import '../values/layout_list.dart';

class LayoutNavBarItem extends StatelessWidget {
  final int index;
  final int currentIndex;
  final void Function() changeIndex;

  const LayoutNavBarItem({
    super.key,
    required this.index,
    required this.currentIndex,
    required this.changeIndex,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        changeIndex();
      },
      child: Container(
        height: 56.h,
        decoration: AppBoxDecoration.bottomNavBarItem(index, currentIndex),
        child: AnimatedSize(
          duration: Duration(seconds: 1),
          curve: Curves.easeIn,
          child: SizedBox(
            width: index == currentIndex ? 175.w : 56.w,
            child: currentIndex == index
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(layouts[index].icon, color: Colors.white, size: 25.sp,),
                      Text(
                        layouts[index].label,
                        style: AppTextStyles.textFtS14FW400Cg.copyWith(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  )
                : Icon(layouts[index].icon, color: Colors.black,size: 25.sp,),
          ),
        ),
      ),
    );
  }
}
