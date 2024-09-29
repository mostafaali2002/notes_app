import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubit/notes_cubit/notes_cubit.dart';
import 'package:notes_app/model/note_model.dart';
import 'package:notes_app/views/edit_notes_view.dart';

class NotesCard extends StatelessWidget {
  const NotesCard({
    super.key,
    required this.noteModel,
  });
  final NoteModel noteModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => EditNotesView(notesModel: noteModel),
            ));
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Container(
          padding: const EdgeInsets.only(bottom: 24, top: 24, left: 16),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: const Color(0xffFFCC80)),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 25),
                child: ListTile(
                  title: Text(noteModel.title!,
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.w500)),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Text(noteModel.subTitle!,
                        style: TextStyle(color: Colors.black.withOpacity(.7))),
                  ),
                  trailing: IconButton(
                    onPressed: () {
                      noteModel.delete();
                      BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                    },
                    icon: const Icon(
                      Icons.delete,
                      size: 32,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(noteModel.date,
                        style: TextStyle(color: Colors.black.withOpacity(.7))),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
