import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notes_app/cubits/add_note_cubit/add_notes_cubit.dart';

import 'add_note_form_widget.dart';

class AddNoteBottomSheetWidget extends StatelessWidget {
  const AddNoteBottomSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNotesCubit(),
      child: BlocConsumer<AddNotesCubit, AddNotesState>(
        listener: (context, state) {
          if (state is AddNotesFailure) {
            print('failied ${state.errorMessage}');
          }
          if (state is AddNotesSuccess) {
            Navigator.pop(context);
          }
        },
        builder: (context, state) {
          return AbsorbPointer(
            absorbing: state is AddNotesLoading? true:false,
              child: Padding(
                padding: EdgeInsets.only(
                    left: 16.w,
                right: 16.w,
                bottom: MediaQuery.of(context).viewInsets.bottom),
                child: const SingleChildScrollView(
                  child: AddNoteFormWidget(),
                ),
              ),
          );
        },
      ),
    );
  }
}
