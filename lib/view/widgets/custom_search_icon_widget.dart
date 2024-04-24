import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomSearchIconWidget extends StatelessWidget {
  const CustomSearchIconWidget({super.key});

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
          Icons.search,
          size: 30.sp,
        ),
      ),
    );
  }
}
