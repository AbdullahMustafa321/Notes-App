import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/view/widgets/custom_app_bar_widget.dart';

import '../../models/note_model.dart';
import 'custom_text_field_widget.dart';

class EditNoteScreenBodyWidget extends StatefulWidget {
  const EditNoteScreenBodyWidget({super.key, required this.note});

  final NoteModel note;

  @override
  State<EditNoteScreenBodyWidget> createState() =>
      _EditNoteScreenBodyWidgetState();
}

class _EditNoteScreenBodyWidgetState extends State<EditNoteScreenBodyWidget> {
  String? title, content;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        children: [
          CustomAppBarWidget(
            onPressed: () {
              widget.note.title = title ?? widget.note.title;
              widget.note.content = content ?? widget.note.content;
              widget.note.save();
              BlocProvider.of<NotesCubit>(context).fetchAllNotes();
              Navigator.pop(context);
            },
            title: 'Edit Note',
            icon: FontAwesomeIcons.check,
          ),
          SizedBox(
            height: 30.h,
          ),
          CustomTextFieldWidget(
            onChanged: (value) {
              title = value;
            },
            hintText: widget.note.title,
          ),
          SizedBox(
            height: 20.h,
          ),
          CustomTextFieldWidget(
            onChanged: (value) {
              content = value;
            },
            maxLines: 5,
            hintText: widget.note.content,
          ),
        ],
      ),
    ));
  }
}
