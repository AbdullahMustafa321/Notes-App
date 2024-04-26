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
      designSize: const Size(360, 690),
      builder: (_, context) {
        return MaterialApp(
          theme: ThemeData(
            fontFamily: 'Poppins',
              brightness: Brightness.dark,
          scaffoldBackgroundColor: const Color(0xff383838),
          appBarTheme: const AppBarTheme(color: Color(0xff383838))),
          debugShowCheckedModeBanner: false,
          routes: {
            NotesScreen.id: (context) => const NotesScreen(),
          },
          initialRoute: NotesScreen.id,
        );
      },
    );
  }
}
