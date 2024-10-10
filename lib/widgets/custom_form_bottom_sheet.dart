import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_button.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class CustomFormBottomSheet extends StatefulWidget {
  const CustomFormBottomSheet({
    super.key,
  });

  @override
  State<CustomFormBottomSheet> createState() => _CustomFormBottomSheetState();
}

class _CustomFormBottomSheetState extends State<CustomFormBottomSheet> {
  GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          const CustomTextField(title: "Title"),
          const SizedBox(
            height: 32,
          ),
          const CustomTextField(
            title: "Content",
            maxLines: 5,
          ),
          const SizedBox(
            height: 120,
          ),
          CustomButton(
            onPressed: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {
                  
                });
              }
            },
          )
        ],
      ),
    );
  }
}
