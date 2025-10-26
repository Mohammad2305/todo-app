import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo/cores/utils/routing/routes.dart';
import 'package:todo/features/layout/presentation/widgets/tasks_category_item.dart';
import '../../data/models/values/categories.dart';

class GridTaskCategories extends StatelessWidget {
  final int rowItemCount;
  const GridTaskCategories({super.key, required this.rowItemCount});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: categories.length-1,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: rowItemCount,
          mainAxisSpacing: 10.h,
          crossAxisSpacing: 10.w,
          mainAxisExtent: 60.h
      ),
      itemBuilder: (context, index){
        return TasksCategoryItem(
          index: index,
          onTap: (){
            Navigator.pushNamed(
              context,
              Routes.taskCategory,
              arguments: {
                "currentIndex" : index,
              }
            );
          },
        );
      },
    );
  }
}
