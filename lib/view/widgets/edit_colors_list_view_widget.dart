import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notes_app/models/note_model.dart';
import '../../constant/colors.dart';
import 'color_item_widget.dart';

class EditColorsListViewWidget extends StatefulWidget {
  const EditColorsListViewWidget({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditColorsListViewWidget> createState() => _EditColorsListViewWidgetState();
}

class _EditColorsListViewWidgetState extends State<EditColorsListViewWidget> {
  late int currentIndex ;
  @override
  void initState() {
    currentIndex = kColors.indexOf(Color(widget.note.color));
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 64.h,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: kColors.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: (){
                currentIndex = index;
                widget.note.color=kColors[index].value;
                setState(() {
                });
              },
              child: ColorItemWidget(
                color: kColors[index],
                isActive: currentIndex == index,
              ),
            );
          }),
    );

  }
}
