import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo/cores/shared/constants/app_colors.dart';
import 'package:todo/features/auth/data/core/values/auth_forms.dart';
import 'package:todo/features/auth/presentation/widgets/auth_body.dart';
import '../../../../cores/utils/routing/routes.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> loginKey = GlobalKey();
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: AuthBody(
              authForm: loginForm,
              pageName: 'Login',
              pageDescription: 'Login to your account',
              mainActionText: "Login",
              formKey: loginKey,
              onMainTap: () {
                if(loginKey.currentState!.validate()){
                  Navigator.pushNamed(context, Routes.layoutScreen);
                }
              },
              onSubTap: () {
                Navigator.pushNamed(context, Routes.registerScreen);
              },
              question: 'Don’t have an account?',
              answer: 'Create account',
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.mainColor,
        onPressed: (){
          Navigator.pushNamed(context, Routes.layoutScreen);
        },
        child: Icon(Icons.layers_outlined, color: Colors.white,),
      ),
    );
  }
}