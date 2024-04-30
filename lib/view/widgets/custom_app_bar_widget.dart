import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notes_app/view/widgets/custom_icon_widget.dart';

class CustomAppBarWidget extends StatelessWidget {
  const CustomAppBarWidget({
    super.key, required this.title, required this.icon, this.onPressed, required this.isThereIcon,
  });
final String title;
final IconData icon;
final void Function()? onPressed;
final bool isThereIcon;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.sp),
        ),
         isThereIcon?CustomIconWidget(
           onPressed: onPressed,
           icon: icon,):Container(),
      ],
    );
  }
}
