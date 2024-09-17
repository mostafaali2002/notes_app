import 'package:flutter/material.dart';
import 'package:notes_app/widget/custom_button.dart';
import 'package:notes_app/widget/text_form.dart';

class AddNotesForm extends StatefulWidget {
  const AddNotesForm({super.key});

  @override
  State<AddNotesForm> createState() => _AddNotesFormState();
}

class _AddNotesFormState extends State<AddNotesForm> {
  GlobalKey formKey = GlobalKey();
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
  }
}
