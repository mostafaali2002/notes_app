import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubit/notes_cubit/notes_cubit.dart';
import 'package:notes_app/model/note_model.dart';

import 'package:notes_app/widget/notes_card.dart';

class NoteCardList extends StatelessWidget {
  const NoteCardList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {
        List<NoteModel> notes =
            BlocProvider.of<NotesCubit>(context).notes ?? [];
        return ListView.builder(
          itemCount: notes.length,
          padding: EdgeInsets.zero,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: NotesCard(noteModel: notes[index]),
            );
          },
        );
      },
    );
  }
}
