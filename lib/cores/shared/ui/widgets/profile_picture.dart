import 'dart:io';
import 'package:flutter/material.dart';
import '../../caches/cache_helper.dart';
import '../../constants/app_assets.dart';

class ProfilePicture extends StatelessWidget {
  final double? radius;

  const ProfilePicture({super.key, this.radius});

  @override
  Widget build(BuildContext context) {
    return CacheHelper.getData("userAvatar") == null
        ? CircleAvatar(radius: radius,child: Image.asset(AppAssets.userDefaultImage,),)
        : CircleAvatar(radius: radius, backgroundImage: FileImage(File(CacheHelper.getData("userAvatar")),),);
  }
}