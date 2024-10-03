import 'package:flutter/material.dart';
import 'package:notes_app/widget/bottom_sheet.dart';
import 'package:notes_app/widget/notes_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: false,
            showDragHandle: true,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            context: context,
            builder: (context) {
              return const CustomBottomSheet();
            },
          );
        },
      ),
      body: const NotesBody(),
    );
  }
}
