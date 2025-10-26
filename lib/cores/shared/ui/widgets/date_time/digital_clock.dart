import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo/cores/shared/ui/widgets/date_time/date.dart';
import 'package:todo/cores/shared/ui/widgets/date_time/time.dart';

class DigitalClock extends StatelessWidget {
  final bool showDate;
  final bool showTime;
  const DigitalClock({super.key, this.showDate = false, this.showTime = true});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Stream.periodic(const Duration(seconds: 1)),
      builder: (context, snapshot) {
        return Column(
          spacing: showDate ? 10.w : 0.w,
          children: [
            showDate ? Date() : SizedBox.shrink(),
            showTime ? Time() : SizedBox.shrink(),
          ],
        );
      },
    );
  }
}
