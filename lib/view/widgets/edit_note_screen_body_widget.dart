import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/view/widgets/custom_app_bar_widget.dart';

import 'custom_text_field_widget.dart';

class EditNoteScreenBodyWidget extends StatelessWidget {
  const EditNoteScreenBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          children: [
            const CustomAppBarWidget(title: 'Edit Note', icon: FontAwesomeIcons.check,),
            SizedBox(
              height: 30.h,
            ),
            const CustomTextFieldWidget(
              label: 'Title',
              hintText: 'Enter Your Titel',
            ),
            SizedBox(
              height: 20.h,
            ),
            const CustomTextFieldWidget(
              maxLines:5,
              label: 'Content',
              hintText: 'Enter Your Content',
            ),
          ],
        ),
      )
    );
  }
}
