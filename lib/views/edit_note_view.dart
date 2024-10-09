import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding:  EdgeInsets.symmetric(vertical: 30, horizontal: 16),
        child: Column(
          children: [
            CustomAppBar(
              title: "Edit Note",
              icon: Icons.edit,
            ),
          ],
        ),
      ),
    );
  }
}
