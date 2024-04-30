
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notes_app/view/widgets/color_item_widget.dart';

class ColorListView extends StatefulWidget {
  const ColorListView({super.key});

  @override
  State<ColorListView> createState() => _ColorListViewState();
}

class _ColorListViewState extends State<ColorListView> {
List<Color> colors=[
  Colors.orange,
  Colors.yellow,
  Colors.blue,
  Colors.greenAccent,
  Colors.indigo,
  Colors.pink,
  Colors.yellowAccent,
  Colors.redAccent,
  Colors.green,
  Colors.limeAccent,
];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:64.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: colors.length,
          itemBuilder: (context,index){
        return  ColorItemWidget(color: colors[index],);
      }),
    );
  }
}
