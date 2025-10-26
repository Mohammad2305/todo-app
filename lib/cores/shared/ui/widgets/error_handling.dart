import 'package:flutter/material.dart';
import '../../themes/app_text_styles.dart';

class ErrorHandling extends StatelessWidget {
  final Widget errorIcon;
  final String errorMessage;
  const ErrorHandling({super.key, required this.errorIcon, required this.errorMessage});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        errorIcon,
        Text(errorMessage, style: AppTextStyles.textFt16Fw500Cbt,),
      ],
    );
  }
}
