import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomFloatingButtonWidget extends StatelessWidget {
  const CustomFloatingButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomRight,
        child: Padding(
          padding:  EdgeInsets.symmetric(vertical: 3.h),
          child: FloatingActionButton(
              onPressed: (){},
              child: const Icon(Icons.add,color: Colors.white,),
          backgroundColor: Colors.black,),
        ));
  }
}
