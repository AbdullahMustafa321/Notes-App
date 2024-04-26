import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notes_app/view/widgets/notes_body_widget.dart';

class NotesListViewWidget extends StatelessWidget {
  const NotesListViewWidget({super.key});
final colorsList =const [
  Color(0xffFFCD7A),
  Color(0xffE7E896),
  Color(0xff76D6EE),
  Color(0xffD69CDF)
];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(vertical: 8.h),
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: 4,
          itemBuilder: (context,index){
        return  NotesBodyWidget(color: colorsList[index],);
      }),
    );
  }
}
