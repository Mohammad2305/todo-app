import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo/cores/shared/themes/app_text_styles.dart';
import 'package:todo/cores/shared/ui/widgets/custom_input.dart';
import '../../data/models/values/add_text_fields.dart';

class AddTaskInfo extends StatefulWidget {
  const AddTaskInfo({super.key,});

  @override
  State<AddTaskInfo> createState() => _AddTaskInfoState();
}

DateTime chooseDate = DateTime.now();
TimeOfDay startTime = TimeOfDay.now();
TimeOfDay endTime = TimeOfDay.now();

class _AddTaskInfoState extends State<AddTaskInfo> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 10.h,
      children: [
        ListView.separated(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return CustomInput(inputInfo: fields[index]);
          },
          separatorBuilder: (context, index) => SizedBox(height: 10.h),
          itemCount: fields.length,
        ),
        Text(
          "Date",
          style: AppTextStyles.textFtS14FW500Cbt,
        ),
        CalendarDatePicker(
          initialDate: DateTime.now(),
          currentDate: chooseDate,
          firstDate: DateTime.now(),
          lastDate: DateTime.now().add(Duration(days: 1000)),
          onDateChanged: (DateTime value) {
            setState(() {
              chooseDate = value;
            });
            showTimePicker(
              context: context,
              initialTime: TimeOfDay.now(),
            ).then((onValue){
              setState(() {
                endTime = onValue ?? TimeOfDay.now();
              });
            });
            showTimePicker(
              context: context,
              initialTime: TimeOfDay.now(),
            ).then((onValue){
              setState(() {
                startTime = onValue ?? TimeOfDay.now();
              });
            });
          },
        ),
      ],
    );
  }
}