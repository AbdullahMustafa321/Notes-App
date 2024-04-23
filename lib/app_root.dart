import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notes_app/view/screens/notes_screen.dart';

class AppRoot extends StatelessWidget {
  const AppRoot({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      splitScreenMode: true,
      minTextAdapt: true,
      designSize: Size(360,690),
      builder: (_,context){
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          routes: {
            NotesScreen.id : (context)=> NotesScreen(),
          },
          initialRoute: NotesScreen.id,
        );
      },
    );
  }
}
