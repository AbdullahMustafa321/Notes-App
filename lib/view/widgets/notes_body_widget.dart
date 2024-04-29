import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/view/screens/edit_note_screen.dart';

class NotesBodyWidget extends StatelessWidget {
  const NotesBodyWidget({super.key, required this.note});

  final NoteModel note;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 3.h),
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, EditNoteScreen.id);
        },
        child: Slidable(
          key: const ValueKey(0),
          startActionPane: ActionPane(
            dismissible: DismissiblePane(
              onDismissed: () {
                note.delete();
                BlocProvider.of<NotesCubit>(context).fetchAllNotes();
              },
            ),
            motion: const ScrollMotion(),
            children: [
              SlidableAction(
                onPressed: (context) => () {},
                backgroundColor: Colors.red,
                foregroundColor: Colors.white,
                icon: Icons.delete,
                label: 'Delete',
              )
            ],
          ),
          child: Container(
              padding: EdgeInsets.only(top: 15.h, bottom: 15.h),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.r),
                color: Color(note.color),
              ),
              child: Column(
                children: [
                  ListTile(
                    title: Text(
                      note.title,
                      style: TextStyle(fontSize: 30.sp, color: Colors.black),
                    ),
                    subtitle: Padding(
                      padding: EdgeInsets.only(top: 20.h),
                      child: Text(
                        note.content,
                        style: const TextStyle(
                          color: Colors.black26,
                        ),
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    trailing: IconButton(
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                title: const Text(
                                    'Are you sure you want to Delete this Note'),
                                actions: [
                                  MaterialButton(
                                    onPressed: () {
                                      note.delete();
                                      Navigator.pop(context);
                                      BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                                    },
                                    child: const Text('YES'),
                                  ),
                                  MaterialButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: const Text('NO'),
                                  )
                                ],
                              );
                            });
                      },
                      icon: const Icon(
                        FontAwesomeIcons.trash,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Padding(
                      padding: EdgeInsets.only(top: 30.h, right: 61.w),
                      child: Text(
                        note.date,
                        style: const TextStyle(
                          color: Colors.black26,
                        ),
                      ),
                    ),
                  )
                ],
              )),
        ),
      ),
    );
  }
}
