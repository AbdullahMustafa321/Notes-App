import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notes_app/view/widgets/custom_button_widget.dart';
import 'package:notes_app/view/widgets/custom_text_field_widget.dart';

class AddNoteBottomSheetWidget extends StatelessWidget {
  const AddNoteBottomSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: SingleChildScrollView(
        child: Column(
          children: [
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
            SizedBox(
              height: 30.h,
            ),
            const CustomButtonWidget(),
            SizedBox(
              height: 30.h,
            ),
          ],
        ),
      ),
    );
  }
}
