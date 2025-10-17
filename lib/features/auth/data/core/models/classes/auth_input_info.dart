import '../../../../../../cores/utils/models/classes/input_info.dart';

class AuthInputInfo extends InputInfo {
  bool isPassword;
  bool isSecure;

  AuthInputInfo({
    required super.controller,
    required super.hint,
    required super.label,
    required super.validator,
    super.maxLength,
    super.maxLine,
    super.onChanged,
    super.onTap,
    super.prefixWidget,
    super.readOnly,
    super.suffixWidget,
    this.isSecure = false,
    this.isPassword = false,
  });
}
