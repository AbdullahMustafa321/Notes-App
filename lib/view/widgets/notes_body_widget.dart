import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NotesBodyWidget extends StatelessWidget {
  const NotesBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5.h),
      child: Container(
          padding: EdgeInsets.only(top: 10.h, bottom: 10.h),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.r),
              color: const Color(0xffFFCD7A)),
          child: Column(
            children: [
              ListTile(
                title: Text(
                  'Flutter tips',
                  style: TextStyle(fontSize: 30.sp, color: Colors.black),
                ),
                subtitle: Padding(
                  padding: EdgeInsets.only(top: 20.h),
                  child: const Text(
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    'Build your creare with Abdullah MustafaBuild your creare with Abdullah MustafaBuild your creare with Abdullah MustafaBuild your creare with Abdullah MustafaBuild your creare with Abdullah Mustafa',
                    style: TextStyle(
                      color: Colors.black26,
                    ),
                  ),
                ),
                trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    FontAwesomeIcons.trash,
                    color: Colors.black,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: EdgeInsets.only(top: 30.h, right: 8.w),
                  child: const Text(
                    'May 21,2024',
                    style: TextStyle(
                      color: Colors.black26,
                    ),
                  ),
                ),
              )
            ],
          )),
    );
  }
}
