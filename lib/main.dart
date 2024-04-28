import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/constant/strings.dart';
import 'package:notes_app/models/note_model.dart';

import 'app_root.dart';

void main() async{
  await Hive.initFlutter();
  await Hive.openBox(kNoteBox);
  Hive.registerAdapter(NoteModelAdapter());
  runApp(const AppRoot());
}

