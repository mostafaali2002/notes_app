import 'package:flutter/material.dart';
import 'package:notes_app/widget/notes_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          showBottomSheet(
            context: context,
            builder: (context) {
              return Container();
            },
          );
        },
      ),
      body: const NotesBody(),
    );
  }
}
