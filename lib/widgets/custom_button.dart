import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: kprimaryColor, borderRadius: BorderRadius.circular(15)),
      child: TextButton(
        onPressed: () {},
        child: const Text(
          "Add",
          style: TextStyle(
              color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}