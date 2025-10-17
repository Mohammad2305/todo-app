import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../values/categories.dart';

DropdownMenuEntry<String> dropItem(int index){
  return DropdownMenuEntry(
    leadingIcon: CircleAvatar(backgroundColor: categories[index].mainColor, radius: 5.sp,),
    value: categories[index].name,
    label: categories[index].name,

  ) ;
}

DropdownMenuEntry<String> dropItemSpecial(Color backGround, String value, String label){
  return DropdownMenuEntry(
    leadingIcon: CircleAvatar(backgroundColor: backGround, radius: 5.sp,),
    value: value,
    label: label,
  ) ;
}