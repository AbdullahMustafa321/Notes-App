import 'package:flutter/material.dart';

import 'add_note_bottom_sheet_widget.dart';

class CustomFloatingButtonWidget extends StatelessWidget {
  const CustomFloatingButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      shape: const CircleBorder(),
      onPressed: () {
        showBottomSheet(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15)
          ),
            context: context,
            builder: (context) {
              return const AddNoteBottomSheetWidget();
            });
      },
      backgroundColor: Colors.greenAccent.withOpacity(0.9),
      child: const Icon(
        Icons.add,
        color: Colors.black,
      ),
    );
  }
}
