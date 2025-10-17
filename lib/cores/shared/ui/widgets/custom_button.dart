import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../themes/app_text_styles.dart';

class CustomButton extends StatelessWidget {
  final void Function() onTap;
  final BoxDecoration decoration;
  final Widget? icon;
  final String label;
  final double? width;
  final EdgeInsets? margin;

  const CustomButton({
    super.key,
    required this.onTap,
    required this.decoration,
    this.icon,
    required this.label,
    this.width,
    this.margin,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: width,
        padding: EdgeInsets.symmetric(vertical: 14.h, horizontal: 12.w),
        margin: margin,
        decoration: decoration,
        child: Row(
          spacing: 5.w,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icon ?? SizedBox.shrink(),
            Text(
              label,
              style: AppTextStyles.textFt16Fw500Cbt.copyWith(
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
