import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubit/add_notes/add_notes_cubit.dart';
import 'package:notes_app/cubit/notes_cubit/notes_cubit.dart';
import 'package:notes_app/widget/custom_button.dart';
import 'package:notes_app/widget/text_form.dart';

class CustomBottomSheet extends StatefulWidget {
  const CustomBottomSheet({
    super.key,
  });

  @override
  State<CustomBottomSheet> createState() => _CustomBottomSheetState();
}

class _CustomBottomSheetState extends State<CustomBottomSheet> {
  GlobalKey formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subTitle;
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
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 30),
            child: Form(
              key: formKey,
              autovalidateMode: autovalidateMode,
              child: Column(
                children: [
                  CustomTextFormField(
                    onSaved: (p0) {
                      title = p0;
                    },
                    hint: "Title",
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomTextFormField(
                    onSaved: (p1) {
                      subTitle = p1;
                    },
                    hint: "Content",
                    maxLines: 4,
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  CustomButton(
                    onPressed: () {},
                    width: MediaQuery.sizeOf(context).width,
                    btnColor: const Color.fromARGB(255, 31, 130, 34),
                    text: "Add",
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
