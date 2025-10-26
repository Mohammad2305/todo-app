import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../cores/shared/ui/widgets/inputs/auth_input.dart';
import '../../../../cores/utils/models/functions/switches/show_icon.dart';
import '../../data/core/models/classes/auth_input_info.dart';

class AuthForm extends StatefulWidget {
  final List<AuthInputInfo> authForm;
  final Key formKey;
  const AuthForm({super.key, required this.authForm, required this.formKey});

  @override
  State<AuthForm> createState() => _AuthFormState();
}

class _AuthFormState extends State<AuthForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: widget.formKey,
      child: ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: widget.authForm.length,
        itemBuilder: (context, index) {
          return AuthInput(
            authInput: AuthInputInfo(
              controller: widget.authForm[index].controller,
              label: widget.authForm[index].label,
              hint: widget.authForm[index].hint,
              isPassword: widget.authForm[index].isPassword,
              isSecure: widget.authForm[index].isSecure,
              suffixWidget: IconButton(
                onPressed: (){
                  setState(() {
                    widget.authForm[index].isSecure = !widget.authForm[index].isSecure ;
                  });
                },
                icon: showIconPassword(widget.authForm[index].isPassword, widget.authForm[index].isSecure),
              ),
              validator: widget.authForm[index].validator,
            ),
          );
        },
        separatorBuilder: (context, index) => SizedBox(height: 16.h),
      ),
    );
  }
}