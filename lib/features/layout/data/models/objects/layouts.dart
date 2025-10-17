import 'package:flutter/material.dart';
import '../../../presentation/screens/add_view.dart';
import '../../../presentation/screens/home_view.dart';
import '../../../presentation/screens/profile_view.dart';
import '../classes/layout_info.dart';

abstract class AppLayOut {
  static LayOutInfo home = LayOutInfo(
    icon: Icons.home_outlined,
    label: "home",
    layout: HomeView(),
  );

  static LayOutInfo add = LayOutInfo(
    icon: Icons.add,
    label: "add",
    layout: AddView(),
  );

  static LayOutInfo profile = LayOutInfo(
    icon: Icons.person_outline,
    label: "profile",
    layout: ProfileView(),
  );
}
