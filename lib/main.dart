import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/constant/strings.dart';
import 'package:notes_app/simple_bloc_observer.dart';

import 'app_root.dart';
import 'models/note_model.dart';


void main() async{
  await Hive.initFlutter();
  Bloc.observer = SimpleBlocObserver();
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModel>(kNoteBox);
  runApp(const AppRoot());
}

