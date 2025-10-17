import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:todo/cores/shared/constants/app_assets.dart';
import 'package:todo/cores/shared/themes/app_text_styles.dart';
import 'package:todo/cores/utils/models/functions/navigators.dart';

class UserWelcome extends StatelessWidget {
  const UserWelcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      spacing: 10.h,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 2.h,
          children: [
            Row(
              spacing: 1.w,
              children: [
                Text("Hello"),
                SvgPicture.asset(AppAssets.handSignSvg),
              ],
            ),
            Text("Mohammed Nasser", style: AppTextStyles.textFt16Fw500Cbt,),
          ],
        ),
        InkWell(
          onTap: (){
            pushTo(context, Scaffold(appBar: AppBar(),));
          },
          child: CircleAvatar(
            backgroundColor: Color(0xffF5F5F5),
            child: Icon(Icons.notifications_outlined),
          ),
        ),
      ],
    );
  }
}