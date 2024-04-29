import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notes_app/constant/colors.dart';

class CustomButtonWidget extends StatelessWidget {
  const CustomButtonWidget({super.key,  required this.onTap,  this.isLoading=false});
final void Function()? onTap;
final bool isLoading;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 50.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.r),
          color: kPrimaryColor,
        ),
        child:  Center(
          child:isLoading? const SizedBox(
            height: 20,
            width: 20,
            child: CircularProgressIndicator(
              color: Colors.black,
            ),
          ):const Text(
            'Save',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
