import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:todo/cores/shared/constants/app_assets.dart';
import 'package:todo/cores/utils/models/classes/task_info.dart';
import '../classes/tasks_categories.dart';


List<TaskMainInfo> newTasksList = [] ;
List<TaskMainInfo> inProgressTasksList = [] ;
List<TaskMainInfo> completedTasksList = [] ;
List<TaskMainInfo> outdatedTasksList = [] ;
List<TaskMainInfo> deletedTasksList = [] ;

abstract class AppCategories {
  static TasksCategory newTasks = TasksCategory(
    name: "New Tasks",
    tasks: newTasksList,
    icon: SvgPicture.asset(AppAssets.newTasks,),
    mainColor: Color(0xff5679DD),
    subColor: Color(0xff89A1E7),
    textColor: Color(0xffBBC9F1),
  );
  static TasksCategory inProgressTasks = TasksCategory(
    name: "In Progress",
    tasks: inProgressTasksList,
    icon: SvgPicture.asset(AppAssets.inProgressTasks),
    mainColor: Color(0xffEF9645),
    subColor: Color(0xffF4B57D),
    textColor: Color(0xffFADFC7),
  );
  static TasksCategory completedTasks = TasksCategory(
    name: "Completed",
    tasks: completedTasksList,
    icon: SvgPicture.asset(AppAssets.completedTasks),
    mainColor: Color(0xff64CFB4),
    subColor: Color(0xff83D9C2),
    textColor: Color(0xffD2F4EB),
  );
  static TasksCategory outdatedTasks = TasksCategory(
    name: "Out Dated",
    tasks: newTasksList,
    icon: SvgPicture.asset(AppAssets.outDatedTasks),
    mainColor: Color(0xffDC4481),
    subColor: Color(0xffE77CA7),
    textColor: Color(0xffFCCBE2),
  );
  static TasksCategory deletedTasks = TasksCategory(
    name: "Deleted",
    tasks: deletedTasksList,
    icon: Icon(Icons.delete_outline, color: Colors.white,),
    mainColor: Colors.red,
    subColor: Colors.red.shade300,
    textColor: Colors.red.shade100,
  );
}
