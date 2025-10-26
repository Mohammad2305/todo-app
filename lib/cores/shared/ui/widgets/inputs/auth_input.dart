import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../features/auth/data/core/models/classes/auth_input_info.dart';
import '../../../../utils/models/classes/input_info.dart';
import '../../../../utils/models/functions/app_input_decoration.dart';
import '../../../themes/app_text_styles.dart';

class AuthInput extends StatelessWidget {
  final AuthInputInfo authInput;
  const AuthInput({super.key, required this.authInput});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 5.h,
      children: [
        Text(authInput.label, style: AppTextStyles.textFt16Fw500Cbt),
        TextFormField(
          validator: authInput.validator,
          controller: authInput.controller,
          readOnly: authInput.readOnly ?? false,
          onTap: authInput.onTap,
          maxLines: authInput.maxLine ?? 1,
          maxLength: authInput.maxLength,
          decoration: inputDecoration(authInput, false),
          obscureText: authInput.isSecure,
          onChanged: authInput.onChanged,
        )
      ],
    );
  }
}