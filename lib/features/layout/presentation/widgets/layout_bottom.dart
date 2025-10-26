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

class _LayoutBottomState extends State<LayoutBottom> with SingleTickerProviderStateMixin{

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 24.h),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
        height: 80.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100.sp),
          color: AppColors.navColor,
        ),
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          physics: NeverScrollableScrollPhysics(),
          itemBuilder: (context, index){
            return LayoutNavBarItem(
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
          separatorBuilder: (context, index)=>SizedBox(width: 15.w,),
          itemCount: layouts.length,
        ),
      ),
    );
  }
}