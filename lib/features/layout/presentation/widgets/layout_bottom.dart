import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo/cores/shared/constants/app_colors.dart';
import '../../data/models/functions/nav_item.dart';
import '../../data/models/values/layout_list.dart';

class LayoutBottom extends StatefulWidget {
  final void Function(int selectedIndex) onChange;
  const LayoutBottom({super.key, required this.onChange,});

  @override
  State<LayoutBottom> createState() => _LayoutBottomState();
}

int currentIndex = 0 ;

class _LayoutBottomState extends State<LayoutBottom> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 20.h),
      color: Colors.transparent,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
        height: 70.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100.sp),
          color: AppColors.navColor,
        ),
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          physics: NeverScrollableScrollPhysics(),
          itemBuilder: (context, index){
            return showNavItem(
              context: context,
              index: index,
              currentIndex: currentIndex,
              changeIndex: (){
                setState(() {
                  currentIndex = index;
                  widget.onChange(currentIndex);
                });
              }
            );
          },
          separatorBuilder: (context, index)=>SizedBox(width: 2.w,),
          itemCount: layouts.length,
        ),
      ),
    );
  }
}