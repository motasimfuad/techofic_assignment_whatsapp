import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotificationCounter extends StatelessWidget {
  final int counter;
  final Color? bgColor;
  final Color? textColor;
  const NotificationCounter({
    Key? key,
    required this.counter,
    this.bgColor,
    this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 20.w,
      height: 20.w,
      decoration: BoxDecoration(
        color: bgColor ?? Colors.white,
        borderRadius: BorderRadius.circular(60.w),
      ),
      child: Center(
        child: Text(
          counter.toString(),
          style: TextStyle(
            color: textColor ?? Theme.of(context).primaryColor,
            fontSize: 12.sp,
          ),
        ),
      ),
    );
  }
}
