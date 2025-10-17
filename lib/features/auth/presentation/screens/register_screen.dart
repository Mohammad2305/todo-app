import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../cores/utils/routing/routes.dart';
import '../../data/core/values/auth_forms.dart';
import '../widgets/auth_body.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> registerKey = GlobalKey();
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: AuthBody(
              authForm: registerForm,
              pageName: 'Create Account',
              pageDescription: 'Create a new account for free',
              mainActionText: 'Register',
              formKey: registerKey,
              onMainTap: () {
                if(registerKey.currentState!.validate()){
                  Navigator.pushNamed(context, Routes.loginScreen);
                }
              },
              onSubTap: () {
                Navigator.pushNamed(context, Routes.loginScreen);
              },
              question: 'Already have an account?',
              answer: 'Login',
            ),
          ),
        ),
      ),
    );
  }
}