import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:notes_app/view/widgets/custom_app_bar.dart';
import 'package:notes_app/view/widgets/notes_body_widget.dart';

import '../widgets/custom_elevated_button_widget.dart';

class NotesScreen extends StatelessWidget{
  const NotesScreen({super.key});
  static String id = 'Notes-Screen';
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: SafeArea(
          child: Padding(
            padding:  EdgeInsets.symmetric(vertical: 5.h,horizontal: 12.w),
            child: Column(
              children: [
                const CustomAppBarWidget(),
                SizedBox(height: 20.h,),
                const NotesBodyWidget(),
                const CustomElevatedButtonWidget()
              ],
            ),
          ),
        )
    );
  }
}

