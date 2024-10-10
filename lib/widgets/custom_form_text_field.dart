import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_button.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class CustomFormTextField extends StatelessWidget {
  const CustomFormTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomTextField(title: "Title"),
        SizedBox(
          height: 32,
        ),
        CustomTextField(
          title: "Content",
          maxLines: 5,
        ),
        SizedBox(
          height: 120,
        ),
        CustomButton()
      ],
    );
  }
}
