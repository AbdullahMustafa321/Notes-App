import 'package:flutter/material.dart';

class NotesScreen extends StatelessWidget {
  const NotesScreen({super.key});
  static String id = 'Notes-Screen';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Column(
        children: [
          Text('Hello New notes App'),
          Text('Hello New notes App'),
          Text('Hello New notes App'),
          Text('Hello New notes App'),
          Text('Hello New notes App'),
          Text('Hello New notes App'),
        ],
      ),),
    );
  }
}
