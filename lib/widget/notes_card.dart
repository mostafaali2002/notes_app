import 'package:flutter/material.dart';

class NotesCard extends StatelessWidget {
  const NotesCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Text("Flutter app", style: TextStyle(color: Colors.black)),
      title: Text("Flutter app", style: TextStyle(color: Colors.black)),
      trailing: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.delete,
            size: 32,
          )),
    );
  }
}
