import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:notes_app/cubits/add_note_cubit/add_notes_cubit.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/view/widgets/color_list_view_widget.dart';

import 'custom_button_widget.dart';
import 'custom_text_field_widget.dart';

class AddNoteFormWidget extends StatefulWidget {
  const AddNoteFormWidget({
    super.key,
  });

  @override
  State<AddNoteFormWidget> createState() => _AddNoteFormWidgetState();
}

class _AddNoteFormWidgetState extends State<AddNoteFormWidget> {
  final GlobalKey<FormState> globalKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, content;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: globalKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          SizedBox(
            height: 30.h,
          ),
          CustomTextFieldWidget(
            onSaved: (value) {
              title = value;
            },
            label: 'Title',
            hintText: 'Enter Your Titel',
          ),
          SizedBox(
            height: 20.h,
          ),
          CustomTextFieldWidget(
            onSaved: (value) {
              content = value;
            },
            maxLines: 5,
            label: 'Content',
            hintText: 'Enter Your Content',
          ),
          SizedBox(
            height: 15.h,
          ),
          const ColorListView(),
          SizedBox(
            height: 15.h,
          ),
          BlocBuilder<AddNotesCubit, AddNotesState>(
            builder: (context, state) {
              return CustomButtonWidget(
                isLoading: state is AddNotesLoading ? true : false,
                onTap: () {
                  if (globalKey.currentState!.validate()) {
                    globalKey.currentState!.save();
                    var noteModel = NoteModel(
                        title: title!,
                        content: content!,
                        date: DateFormat.yMEd().format(DateTime.now()),
                        color: Color(Random().nextInt(Colors.blue.value)).value);
                    BlocProvider.of<AddNotesCubit>(context).addNote(noteModel);
                    BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
              );
            },
          ),
          SizedBox(
            height: 30.h,
          ),
        ],
      ),
    );
  }
}
