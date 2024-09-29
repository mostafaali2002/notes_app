import 'package:flutter/material.dart';
import 'package:notes_app/model/note_model.dart';
import 'package:notes_app/widget/edit_notes_body.dart';

class EditNotesView extends StatelessWidget {
  const EditNotesView({super.key, required this.notesModel});
  final NoteModel notesModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: EditNotesBody(
      noteModel: notesModel,
    ));
  }
}
