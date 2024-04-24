import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notes_app/view/widgets/custom_search_icon_widget.dart';

class CustomAppBarWidget extends StatelessWidget {
  const CustomAppBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Notes',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.sp),
        ),
        const CustomSearchIconWidget(),
      ],
    );
  }
}
