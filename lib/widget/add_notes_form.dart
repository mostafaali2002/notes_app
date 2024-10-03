import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:notes_app/cubit/add_notes/add_notes_cubit.dart';
import 'package:notes_app/model/note_model.dart';
import 'package:notes_app/widget/custom_button.dart';
import 'package:notes_app/widget/text_form.dart';

class AddNotesForm extends StatefulWidget {
  const AddNotesForm({super.key});

  @override
  State<AddNotesForm> createState() => _AddNotesFormState();
}

class _AddNotesFormState extends State<AddNotesForm> {
  GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 30),
      child: Form(
        key: formKey,
        autovalidateMode: autovalidateMode,
        child: Column(
          children: [
            CustomTextFormField(
              validator: (p0) {
                if (p0!.isEmpty) {
                  return "this field is required";
                }
                return null;
              },
              onSaved: (p0) {
                title = p0;
              },
              hint: "Title",
            ),
            const SizedBox(
              height: 20,
            ),
            CustomTextFormField(
              validator: (p0) {
                if (p0!.isEmpty) {
                  return "this field is required";
                }
                return null;
              },
              onSaved: (p1) {
                subTitle = p1;
              },
              hint: "Content",
              maxLines: 4,
            ),
            const SizedBox(
              height: 40,
            ),
            BlocBuilder<AddNotesCubit, AddNotesState>(
              builder: (context, state) {
                return CustomButton(
                  isLoad: state is AddNotesLoading ? true : false,
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      formKey.currentState!.save();
                      var currentDate = DateTime.now();

                      var formattedCurrentDate =
                          DateFormat('dd-MM-yyyy').format(currentDate);
                      var noteModel = NoteModel(
                          title: title!,
                          subTitle: subTitle!,
                          date: formattedCurrentDate,
                          color: const Color(0xffFFCC80).value);
                      BlocProvider.of<AddNotesCubit>(context)
                          .addNotes(noteModel);
                    } else {
                      autovalidateMode = AutovalidateMode.always;
                      setState(() {});
                    }
                  },
                  width: MediaQuery.sizeOf(context).width,
                  btnColor: const Color.fromARGB(255, 31, 130, 34),
                  text: "Add",
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
