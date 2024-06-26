import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notes_app/cubits/add_note_cubit/add_notes_cubit.dart';
import 'package:notes_app/view/widgets/color_item_widget.dart';

import '../../constant/colors.dart';

class ColorListView extends StatefulWidget {
  const ColorListView({super.key});

  @override
  State<ColorListView> createState() => _ColorListViewState();
}

class _ColorListViewState extends State<ColorListView> {
  int? currentIndex ;

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
                BlocProvider.of<AddNotesCubit>(context).color=kColors[index];
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
