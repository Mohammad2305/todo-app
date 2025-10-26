import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../cores/shared/themes/app_text_styles.dart';
import '../../../../cores/shared/ui/widgets/inputs/change_image.dart';
import '../../../../cores/shared/ui/widgets/media/images/change_picture.dart';
import '../../../../cores/utils/models/functions/text_cases.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ChangePicture(
          radius: 100.r,
          size: Size(20.w, 20.h),
          onTap: (){
            showBottomSheet(
              context: context,
              builder: (context){
                return ChangeImage(
                  onTap: (value){
                  },
                  isFirstSet: false,
                );
              },
            );
          },
        ),
        Text(
          AppText.firstCharactersUpperCase("mohammed nasser"),
          style: AppTextStyles.textFtS16FW700Cbt,
        ),
      ],
    );
  }
}
