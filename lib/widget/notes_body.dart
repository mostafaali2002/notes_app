import 'package:flutter/material.dart';
import 'package:notes_app/widget/custom_appbar.dart';
import 'package:notes_app/widget/notes_card_list.dart';

class NotesBody extends StatelessWidget {
  const NotesBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 50,
        ),
        CustomAppBar(
          text: "Notes",
          icon: const Icon(Icons.search),
          onPressedIcon: () {},
        ),
        const SizedBox(
          height: 20,
        ),
        const Expanded(child: NoteCardList())
      ],
    );
  }
}
