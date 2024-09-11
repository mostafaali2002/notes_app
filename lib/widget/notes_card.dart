import 'package:flutter/material.dart';

class NotesCard extends StatelessWidget {
  const NotesCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16), color: Colors.yellow),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30),
              child: ListTile(
                title: const Text("Flutter app",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.w500)),
                subtitle: Text("Flutter app development course",
                    style: TextStyle(color: Colors.black.withOpacity(.7))),
                trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.delete,
                    size: 32,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("20-10-2024",
                      style: TextStyle(color: Colors.black.withOpacity(.7))),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
