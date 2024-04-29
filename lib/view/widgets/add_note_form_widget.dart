import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notes_app/cubits/add_note_cubit/add_notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';

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
            height: 30.h,
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
                        date: DateTime.now().toString(),
                        color: Colors.orangeAccent.value);
                    BlocProvider.of<AddNotesCubit>(context).addNote(noteModel);
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
