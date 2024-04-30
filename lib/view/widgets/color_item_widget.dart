import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ColorItemWidget extends StatelessWidget {
  const ColorItemWidget({super.key, required this.color});
final Color color;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 2.w),
      child: CircleAvatar(
        radius: 32.r,
        backgroundColor: color,
      ),
    );
  }
}