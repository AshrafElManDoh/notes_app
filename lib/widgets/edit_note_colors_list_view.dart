import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/colors_list_view.dart';

class EditNoteColorsListView extends StatefulWidget {
  const EditNoteColorsListView({
    super.key,
    required this.note,
  });
  final NoteModel note;

  @override
  State<EditNoteColorsListView> createState() => _EditNoteColorsListViewState();
}

class _EditNoteColorsListViewState extends State<EditNoteColorsListView> {
  late int currentIndex;

  @override
  void initState() {
    currentIndex = kColors.indexOf(Color(widget.note.color));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50 * 2,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => GestureDetector(
                onTap: () {
                  currentIndex = index;
                  widget.note.color = kColors[currentIndex].value;
                  setState(() {});
                },
                child: ColorItem(
                    color: kColors[index], isActive: currentIndex == index),
              ),
          separatorBuilder: (context, index) => const SizedBox(
                width: 10,
              ),
          itemCount: kColors.length),
    );
  }
}
