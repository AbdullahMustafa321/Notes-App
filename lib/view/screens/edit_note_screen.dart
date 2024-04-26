import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/edit_note_screen_body_widget.dart';

class EditNoteScreen extends StatelessWidget {
  const EditNoteScreen({super.key});
  static String id = 'Edit-Notes-Screen';
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(child: Padding(
        padding: EdgeInsets.symmetric(vertical: 5.h,),
        child: const EditNoteScreenBodyWidget(),
      )),
    );
  }
}
