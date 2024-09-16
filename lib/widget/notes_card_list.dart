import 'package:flutter/material.dart';
import 'package:notes_app/model/note_model.dart';
import 'package:notes_app/widget/notes_card.dart';

class NoteCardList extends StatelessWidget {
  NoteCardList({
    super.key,
  });
  NoteModel? noteModel;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: NotesCard(noteModel: noteModel!),
        );
      },
    );
  }
}
