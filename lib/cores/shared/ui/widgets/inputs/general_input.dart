import 'package:flutter/material.dart';
import '../../../../utils/models/classes/input_info.dart';
import '../../../../utils/models/functions/app_input_decoration.dart';

class GeneralInput extends StatelessWidget {
  final InputInfo inputInfo;
  const GeneralInput({super.key, required this.inputInfo});

  @override
  Widget build(BuildContext context) {
    final focusNode = FocusNode();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      focusNode.requestFocus(); // ensures keyboard opens once sheet fully shown
    });

    return TextFormField(
      validator: inputInfo.validator,
      controller: inputInfo.controller,
      readOnly: inputInfo.readOnly ?? false,
      onTap: inputInfo.onTap,
      maxLines: inputInfo.maxLine,
      maxLength: inputInfo.maxLength,
      keyboardType: inputInfo.keyboardType ?? TextInputType.text,
      decoration: inputDecoration(inputInfo, false),
      onChanged: inputInfo.onChanged,
      focusNode: focusNode,
    );
  }
}
