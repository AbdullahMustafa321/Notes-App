import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'custom_button_widget.dart';
import 'custom_text_field_widget.dart';

class AddNoteFormWidget extends StatefulWidget {

  const AddNoteFormWidget({
    super.key,
  });

  @override
  State<AddNoteFormWidget> createState() => _AddNoteFormWidgetState();
}

class _AddNoteFormWidgetState extends State<AddNoteFormWidget> {
  final GlobalKey<FormState> globalKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, content;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: globalKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          SizedBox(
            height: 30.h,
          ),
           CustomTextFieldWidget(
            onSaved: (value){
              title = value;
            },
            label: 'Title',
            hintText: 'Enter Your Titel',
          ),
          SizedBox(
            height: 20.h,
          ),
           CustomTextFieldWidget(
             onSaved: (value){
               content = value;
             },
            maxLines:5,
            label: 'Content',
            hintText: 'Enter Your Content',
          ),
          SizedBox(
            height: 30.h,
          ),
           CustomButtonWidget(
            onTap: () {
            if(globalKey.currentState!.validate()){
              globalKey.currentState!.save();
            }else{
              autovalidateMode = AutovalidateMode.always;
              setState(() {

              });
            }
          },),
          SizedBox(
            height: 30.h,
          ),
        ],
      ),
    );
  }
}
