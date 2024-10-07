import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
import 'package:notes_app/widgets/note_item.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: kprimaryColor,
        child: const Icon(
          Icons.add,
          color: Colors.black,
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(vertical: 30, horizontal: 16),
        child: Column(
          children: [
            CustomAppBar(),
            SizedBox(height: 10,),
            NoteItem()
          ],
        ),
      ),
    );
  }
}

