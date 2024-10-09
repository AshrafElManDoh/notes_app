import 'package:flutter/material.dart';
import 'package:notes_app/widgets/note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) {
        return const NoteItem();
      },
      separatorBuilder: (context, index) {
        return const SizedBox(height: 10,);
      }, itemCount: 10,
    );
  }
}
