import 'package:flutter/cupertino.dart';
import 'package:notes_app/view/widgets/notes_body_widget.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 15,
        itemBuilder: (context,index){
      return const NotesBodyWidget();
    });
  }
}
