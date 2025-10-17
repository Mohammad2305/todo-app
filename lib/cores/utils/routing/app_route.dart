import 'package:flutter/material.dart';
import 'package:todo/cores/utils/routing/routes.dart';
import 'package:todo/features/layout/presentation/screens/layout.dart';
import 'package:todo/features/task_category_view/presentation/screens/task_category_view.dart';
import '../../../features/auth/presentation/screens/login_screen.dart';
import '../../../features/auth/presentation/screens/register_screen.dart';

class AppRoute{
  static Route? navigator(RouteSettings setting){
    switch(setting.name){
      case Routes.loginScreen:
        return MaterialPageRoute(builder: (_)=>LoginScreen());
      case Routes.registerScreen:
        return MaterialPageRoute(builder: (_)=>RegisterScreen());
      case Routes.layoutScreen:
        return MaterialPageRoute(builder: (_)=>LayOutView());
      case Routes.taskCategory:
        final args = setting.arguments as Map<String, dynamic>;
        return MaterialPageRoute(
          builder: (_)=>TaskCategoryView(
            currentIndex: args["currentIndex"],
          ),
        );
      default:
        return MaterialPageRoute(builder: (_)=>SizedBox());
    }
  }
}