import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_form_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          right: 16,
          left: 16,
          top: 16,
          bottom: MediaQuery.of(context).viewInsets.bottom + 16),
      child: const SingleChildScrollView(
        child: CustomFormTextField(),
      ),
    );
  }
}
