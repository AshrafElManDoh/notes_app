import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_form_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16),
      child: SingleChildScrollView(
        child: CustomFormTextField(),
      ),
    );
  }
}

