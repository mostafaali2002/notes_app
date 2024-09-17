import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubit/add_notes/add_notes_cubit.dart';
import 'package:notes_app/cubit/notes_cubit/notes_cubit.dart';
import 'package:notes_app/widget/add_notes_form.dart';

class CustomBottomSheet extends StatefulWidget {
  const CustomBottomSheet({
    super.key,
  });

  @override
  State<CustomBottomSheet> createState() => _CustomBottomSheetState();
}

class _CustomBottomSheetState extends State<CustomBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNotesCubit(),
      child: BlocConsumer(
        listener: (context, state) {
          if (state is AddNotesFailure) {}
          if (state is AddNotesSuccess) {
            BlocProvider.of<NotesCubit>(context).fetchAllNotes();
            Navigator.pop(context);
          }
        },
        builder: (context, state) {
          return AddNotesForm();
        },
      ),
    );
  }
}
