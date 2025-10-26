import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../utils/models/classes/input_info.dart';
import '../../../themes/app_text_styles.dart';
import 'general_input.dart';

class TitledInput extends StatelessWidget {
  final InputInfo inputInfo;

  const TitledInput({super.key, required this.inputInfo});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 5.h,
      children: [
        Text(inputInfo.label, style: AppTextStyles.textFtS14FW500Cbt),
        GeneralInput(inputInfo: inputInfo),
      ],
    );
  }
}
