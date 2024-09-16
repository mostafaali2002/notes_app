import 'package:flutter/material.dart';
import 'package:notes_app/widget/custom_appbar.dart';
import 'package:notes_app/widget/custom_button.dart';
import 'package:notes_app/widget/text_form.dart';

class EditNotesBody extends StatelessWidget {
  const EditNotesBody({
    super.key,
  });

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
            onSaved: (p0) {
              // title = p0;
            },
            hint: "Title",
          ),
          const SizedBox(
            height: 20,
          ),
          CustomTextFormField(
            onSaved: (p1) {
              // subTitle = p1;
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
              text: "Edit")
        ],
      ),
    );
  }
}
