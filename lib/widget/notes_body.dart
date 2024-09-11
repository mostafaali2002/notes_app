import 'package:flutter/material.dart';
import 'package:notes_app/widget/custom_appbar.dart';
import 'package:notes_app/widget/notes_card.dart';

class NotesBody extends StatelessWidget {
  const NotesBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          height: 50,
        ),
        CustomAppBar(text: "Notes", icon: Icon(Icons.search)),
        SizedBox(
          height: 20,
        ),
        Expanded(child: NoteCardList())
      ],
    );
  }
}

class NoteCardList extends StatelessWidget {
  const NoteCardList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) {
        return NotesCard();
      },
    );
  }
}
