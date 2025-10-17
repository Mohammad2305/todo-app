import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../cores/shared/constants/app_assets.dart';
import '../../../../cores/shared/themes/app_text_styles.dart';
import '../../data/core/models/classes/auth_input_info.dart';
import 'auth_action.dart';
import 'auth_form.dart';

class AuthBody extends StatelessWidget {
  final List<AuthInputInfo> authForm;
  final String pageName;
  final String pageDescription;
  final String mainActionText;
  final Key formKey;
  final void Function() onMainTap;
  final void Function() onSubTap;
  final String question;
  final String answer;

  const AuthBody({
    super.key,
    required this.authForm,
    required this.pageName,
    required this.pageDescription,
    required this.formKey,
    required this.onMainTap,
    required this.onSubTap,
    required this.question,
    required this.answer,
    required this.mainActionText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 8.h,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SvgPicture.asset(AppAssets.appLogoSvg, height: 101.h),
        SizedBox(height: 64.h),
        Text(pageName, style: AppTextStyles.textFt24Fw600Cbt),
        Text(pageDescription, style: AppTextStyles.textFtS14FW400Cg),
        SizedBox(height: 24.h),
        AuthForm(authForm: authForm, formKey: formKey),
        SizedBox(height: 16.h),
        AuthAction(
          onMainTap: onMainTap,
          onSubTap: onSubTap,
          question: question,
          answer: answer,
          mainActionText: mainActionText,
        ),
      ],
    );
  }
}
