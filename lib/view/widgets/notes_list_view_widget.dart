import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/view/widgets/notes_body_widget.dart';

class NotesListViewWidget extends StatelessWidget {
  const NotesListViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {
        List<NoteModel> notes = BlocProvider.of<NotesCubit>(context).notes!;
        return Padding(
          padding: EdgeInsets.symmetric(vertical: 8.h),
          child: notes.isEmpty?Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 200.h,
                  width: 200.h,
                  child: Image.asset('assets/images/Empty.png')),
              SizedBox(height:30.h),
              Text('No notes Created',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 18.sp),),
            ],
          ):ListView.builder(
              padding: EdgeInsets.zero,
              itemCount:notes.length,
              itemBuilder: (context, index) {
                return  NotesBodyWidget(note: notes[index],);
              }),
        );
      },
    );
  }
}
