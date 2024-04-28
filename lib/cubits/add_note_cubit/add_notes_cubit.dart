import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/constant/strings.dart';
import 'package:notes_app/models/note_model.dart';

part 'add_notes_state.dart';

class AddNotesCubit extends Cubit<AddNotesState> {
  AddNotesCubit() : super(AddNotesInitial());
addNote(NoteModel note)async{
  emit(AddNotesLoading());
  try {
    var noteBox = Hive.box<NoteModel>(kNoteBox);
    await noteBox.add(note);
    emit(AddNotesSuccess());
  }  catch (e) {
    emit(AddNotesFailure(e.toString()));
  }
}

}
