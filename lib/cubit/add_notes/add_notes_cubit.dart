import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/model/note_model.dart';

part 'add_notes_state.dart';

class AddNotesCubit extends Cubit<AddNotesState> {
  AddNotesCubit() : super(AddNotesInitial());

  addNotes(NoteModel noteModel) async {
    try {
      emit(AddNotesLoading());
      var notesBox = Hive.box<NoteModel>("note_box");
      await notesBox.add(noteModel);
    } on Exception catch (e) {
      throw Exception(e.toString());
    }
  }
}
