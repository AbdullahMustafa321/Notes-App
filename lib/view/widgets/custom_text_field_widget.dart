import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextFieldWidget extends StatelessWidget {
  const CustomTextFieldWidget(
      {super.key,
      required this.label,
      required this.hintText,
      this.maxLines = 1,
      this.onSaved});

  final String label;
  final String hintText;
  final int maxLines;
  final void Function(String?)? onSaved;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          validator: (value) {
            if (value?.isEmpty ?? true) {
              return '$label is required';
            } else {
              return null;
            }
          },
          onSaved: onSaved,
          maxLines: maxLines,
          cursorColor: Colors.white,
          decoration: InputDecoration(
            border: buildBorder(),
            enabledBorder: buildBorder(Colors.white),
            label: Text(label),
            hintText: hintText,
          ),
        ),
      ],
    );
  }

  OutlineInputBorder buildBorder([color]) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(15.r),
        borderSide: BorderSide(color: color ?? Colors.white));
  }
}
