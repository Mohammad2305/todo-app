import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo/cores/shared/constants/app_colors.dart';
import 'package:todo/cores/shared/themes/app_text_styles.dart';
import '../../data/models/values/layout_list.dart';
import '../widgets/layout_bottom.dart';

class LayOutView extends StatefulWidget {
  const LayOutView({super.key});

  @override
  State<LayOutView> createState() => _LayOutViewState();
}

int currentIndex = 0;

class _LayOutViewState extends State<LayOutView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SafeArea(
            right: false,
            left: false,
            child: SingleChildScrollView(
              child: SingleChildScrollView(child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                child: layouts[currentIndex].layout,
              )),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: LayoutBottom(
              onChange: (int selectedIndex) {
                setState(() {
                  currentIndex = selectedIndex;
                });
              },
            ),
          )
        ],
      ),
    );
  }
}