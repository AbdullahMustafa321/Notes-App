import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomIconWidget extends StatelessWidget {
  const CustomIconWidget({super.key, required this.icon});
final IconData icon;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 40.h,
        width: 40.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.r),
          color: Colors.grey.withOpacity(0.1),
        ),
        child: Icon(
          icon,
          size: 30.sp,
        ),
      ),
    );
  }
}
