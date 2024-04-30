import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ColorItemWidget extends StatelessWidget {
  const ColorItemWidget(
      {super.key, required this.color, required this.isActive});

  final Color color;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 2.w),
      child: isActive
          ? CircleAvatar(
              backgroundColor: Colors.white,
              radius: 34.r,
              child: CircleAvatar(
                radius: 32.r,
                backgroundColor: color,
              ),
            )
          : CircleAvatar(
              radius: 32.r,
              backgroundColor: color,
            ),
    );
  }
}
