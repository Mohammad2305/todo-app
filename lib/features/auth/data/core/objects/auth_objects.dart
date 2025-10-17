import 'package:flutter/cupertino.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import '../models/classes/auth_input_info.dart';

RegExp emailReg = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');

// login form
TextEditingController loginEmailController = TextEditingController();
TextEditingController loginPasswordController = TextEditingController();
abstract class LoginForm{
  static AuthInputInfo loginEmail = AuthInputInfo(
    controller: loginEmailController,
    label: "E-mail",
    hint: "name@gmail.com",
    validator: FormBuilderValidators.email(regex: emailReg),
  );
  static AuthInputInfo loginPassword = AuthInputInfo(
    controller: loginPasswordController,
    label: "Password",
    hint: "Password",
    isPassword: true,
    isSecure: true,
    validator: FormBuilderValidators.compose(
      [
        FormBuilderValidators.password(),
        FormBuilderValidators.required(errorText: "Password is required") ,
      ]
    ),
  );
}


// register form
TextEditingController registerNameController = TextEditingController();
TextEditingController registerEmailController = TextEditingController();
TextEditingController registerPasswordController = TextEditingController();
abstract class RegisterForm{
  static AuthInputInfo registerName = AuthInputInfo(
    controller: registerNameController,
    label: "Name",
    hint: "Name",
    validator: FormBuilderValidators.required(),
  );
  static AuthInputInfo registerEmail = AuthInputInfo(
    controller: registerEmailController,
    label: "E-mail",
    hint: "name@gmail.com",
    validator: FormBuilderValidators.email(regex: emailReg),
  );
  static AuthInputInfo registerPassword = AuthInputInfo(
    controller: registerPasswordController,
    label: "Password",
    hint: "Password",
    isPassword: true,
    isSecure: true,
    validator: FormBuilderValidators.compose(
        [
          FormBuilderValidators.password(),
          FormBuilderValidators.required(errorText: "Password is required") ,
        ]
    ),
  );
}