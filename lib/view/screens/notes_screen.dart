import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:notes_app/view/widgets/custom_app_bar.dart';
import 'package:notes_app/view/widgets/notes_body_widget.dart';
import 'package:notes_app/view/widgets/notes_list_view.dart';

import '../widgets/custom_Floating_button_widget.dart';

class NotesScreen extends StatelessWidget{
  const NotesScreen({super.key});
  static String id = 'Notes-Screen';
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: SafeArea(
          child: Padding(
            padding:  EdgeInsets.symmetric(vertical: 5.h,horizontal: 12.w),
            child: const Column(
              children: [
                CustomAppBarWidget(),
                Expanded(
                  child: NotesListView(),
                ),
                CustomFloatingButtonWidget()
              ],
            ),
          ),
        )
    );
  }
}

