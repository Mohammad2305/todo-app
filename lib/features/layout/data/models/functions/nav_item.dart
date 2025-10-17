import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo/cores/shared/constants/app_colors.dart';
import 'package:todo/cores/shared/themes/app_text_styles.dart';
import '../values/layout_list.dart';

Widget showNavItem({
  required BuildContext context,
  required int index,
  required int currentIndex,
  required void Function() changeIndex,
}){
  if(currentIndex == index){
    return AnimatedContainer(
      duration: Duration(seconds: 3),
      curve: Curves.easeIn,
      height: 56,
      width: 175,
      decoration: BoxDecoration(
        color: AppColors.mainColor,
        borderRadius: BorderRadius.circular(100.sp),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(layouts[index].icon, color: Colors.white,),
          Text(layouts[index].label, style: AppTextStyles.textFtS14FW400Cg.copyWith(color: Colors.white),),
        ],
      ),
    );
  }
  else{
    return InkWell(
      onTap: (){
        changeIndex() ;
      },
      child: CircleAvatar(
        backgroundColor: Color(0xffE7EBF7),
        radius: 40.sp,
        child: Icon(layouts[index].icon, color: Colors.black,),
      ),
    ) ;
  }
}