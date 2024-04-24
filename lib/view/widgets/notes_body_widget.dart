import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NotesBodyWidget extends StatelessWidget {
  const NotesBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.r),
          color: const Color(0xffFFCD7A)),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Flutter tips',
                  style: TextStyle(
                      fontSize: 30.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                const Icon(FontAwesomeIcons.trash, color: Colors.black),
              ],
            ),
            const Row(
              children: [
                Expanded(
                  child: Text(
                    'Build your creare with Abdullah Mustafa',
                    style: TextStyle(
                      color: Colors.black26,
                    ),
                  ),
                ),
                 Text(
                  'May 21,2024',
                  style: TextStyle(
                    color: Colors.black26,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
