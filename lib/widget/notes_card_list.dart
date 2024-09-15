import 'package:flutter/material.dart';
import 'package:notes_app/widget/notes_card.dart';

class NoteCardList extends StatelessWidget {
  const NoteCardList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: NotesCard(),
        );
      },
    );
  }
}
