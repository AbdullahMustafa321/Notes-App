import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notes_app/view/widgets/notes_body_widget.dart';

class NotesListViewWidget extends StatelessWidget {
  const NotesListViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(vertical: 8.h),
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: 15,
          itemBuilder: (context,index){
        return  const NotesBodyWidget();
      }),
    );
  }
}
