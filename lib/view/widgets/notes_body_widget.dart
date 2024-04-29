import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
        onTap: (){
          Navigator.pushNamed(context, EditNoteScreen.id);
        },
        child: Container(
            padding: EdgeInsets.only(top: 10.h, bottom: 10.h),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.r),
                color:   Color(note.color),
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
                    child:  Text(
                      note.content,
                      style: const TextStyle(
                        color: Colors.black26,
                      ),
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  trailing: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      FontAwesomeIcons.trash,
                      color: Colors.black,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding: EdgeInsets.only(top: 30.h, right: 8.w),
                    child:  Text(
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
    );
  }
}
