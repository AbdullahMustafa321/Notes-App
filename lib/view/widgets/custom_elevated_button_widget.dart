import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomElevatedButtonWidget extends StatelessWidget {
  const CustomElevatedButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: (){}, child: Icon(Icons.add));
  }
}
