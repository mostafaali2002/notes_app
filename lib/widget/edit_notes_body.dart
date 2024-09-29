import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubit/notes_cubit/notes_cubit.dart';
import 'package:notes_app/model/note_model.dart';
import 'package:notes_app/widget/custom_appbar.dart';
import 'package:notes_app/widget/custom_button.dart';
import 'package:notes_app/widget/text_form.dart';

class EditNotesBody extends StatefulWidget {
  const EditNotesBody({
    super.key,
    required this.noteModel,
  });
  final NoteModel noteModel;
  @override
  State<EditNotesBody> createState() => _EditNotesBodyState();
}

class _EditNotesBodyState extends State<EditNotesBody> {
  String? title;

  String? subtitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          CustomAppBar(
            text: "Edit",
            icon: const Icon(
              Icons.done,
            ),
            onPressedIcon: () {
              Navigator.pop(context);
            },
          ),
          const SizedBox(
            height: 20,
          ),
          CustomTextFormField(
            onChanged: (p0) {
              title = p0;
            },
            hint: "Title",
          ),
          const SizedBox(
            height: 20,
          ),
          CustomTextFormField(
            onChanged: (p1) {
              subtitle = p1;
            },
            hint: "Content",
            maxLines: 4,
          ),
          const SizedBox(
            height: 40,
          ),
          CustomButton(
              onPressed: () {
                widget.noteModel.title = title ?? widget.noteModel.title;
                widget.noteModel.subTitle =
                    subtitle ?? widget.noteModel.subTitle;
                widget.noteModel.save();
                BlocProvider.of<NotesCubit>(context).fetchAllNotes();
              },
              width: MediaQuery.sizeOf(context).width,
              btnColor: const Color.fromARGB(255, 31, 130, 34),
              text: "Edit")
        ],
      ),
    );
  }
}
