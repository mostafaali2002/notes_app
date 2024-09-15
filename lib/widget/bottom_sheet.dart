import 'package:flutter/material.dart';
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
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 30),
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
                text: "Add")
          ],
        ),
      ),
    );
  }
}
