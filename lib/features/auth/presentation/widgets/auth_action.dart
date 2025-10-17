import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../cores/shared/themes/app_boxes_decoration.dart';
import '../../../../cores/shared/themes/app_text_styles.dart';
import '../../../../cores/shared/ui/widgets/custom_button.dart';

class AuthAction extends StatelessWidget {
  final void Function() onMainTap;
  final void Function() onSubTap;
  final String question;
  final String answer;
  final String mainActionText;
  const AuthAction({super.key, required this.onMainTap, required this.onSubTap, required this.question, required this.answer, required this.mainActionText});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomButton(
          onTap: onMainTap,
          decoration: AppBoxDecoration.actionButtonDecoration,
          label: mainActionText,
        ),
        SizedBox(height: 16.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              question,
              style: AppTextStyles.textFtS12FW400Cbt,
            ),
            TextButton(
              onPressed: onSubTap,
              child: Text(
                answer,
                style: AppTextStyles.textFtS12FW500Cmc,
              ),
            ),
          ],
        ),
      ],
    );
  }
}