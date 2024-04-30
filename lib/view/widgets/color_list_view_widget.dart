import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notes_app/cubits/add_note_cubit/add_notes_cubit.dart';
import 'package:notes_app/view/widgets/color_item_widget.dart';

class ColorListView extends StatefulWidget {
  const ColorListView({super.key});

  @override
  State<ColorListView> createState() => _ColorListViewState();
}

class _ColorListViewState extends State<ColorListView> {
  List<Color> colors = [
    const Color(0xffFE6847),
    const Color(0xffD81159),
    const Color(0xff8F2D56),
    const Color(0xff218380),
    const Color(0xffFBB13C),
    const Color(0xffB66D0D),
    const Color(0xff73D2DE),
    const Color(0xff2176AE),
  ];
  int? currentIndex ;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 64.h,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: colors.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: (){
                currentIndex = index;
                BlocProvider.of<AddNotesCubit>(context).color=colors[index];
                setState(() {
                });
              },
              child: ColorItemWidget(
                color: colors[index],
                isActive: currentIndex == index,
              ),
            );
          }),
    );
  }
}
