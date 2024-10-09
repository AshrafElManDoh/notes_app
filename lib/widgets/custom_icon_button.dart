import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({
    super.key, required this.icon,
  });
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.2),
        borderRadius: BorderRadius.circular(16),
      ),
      child: IconButton(
        onPressed: () {},
        icon:  Icon(icon,color: kprimaryColor,),
      ),
    );
  }
}
