import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';

import 'package:notes_app/view/widgets/custom_app_bar_widget.dart';
import 'package:notes_app/view/widgets/notes_list_view_widget.dart';

import '../widgets/custom_Floating_button_widget.dart';

class NotesScreen extends StatefulWidget {
  const NotesScreen({super.key});

  static String id = 'Notes-Screen';

  @override
  State<NotesScreen> createState() => _NotesScreenState();
}

class _NotesScreenState extends State<NotesScreen> {
  @override
  void initState() {
    BlocProvider.of<NotesCubit>(context).fetchAllNotes();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: const CustomFloatingButtonWidget(),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 12.w),
            child: const Column(
              children: [
                CustomAppBarWidget(
                  title: 'Notes', icon: FontAwesomeIcons.magnifyingGlass, isThereIcon: false,),
                Expanded(
                  child: NotesListViewWidget(),
                ),
              ],
            ),
          ),
        ));
  }
}
