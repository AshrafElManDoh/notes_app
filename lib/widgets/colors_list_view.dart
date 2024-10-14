import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({
    super.key,
    required this.color,
    required this.isActive,
  });
  final Color color;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return isActive
        ? CircleAvatar(
            backgroundColor: color,
            radius: 50,
            child: const Icon(
              Icons.check,
              color: Colors.black,
              size: 40,
            ),
          )
        : CircleAvatar(
            backgroundColor: color,
            radius: 50,
          );
  }
}

class ColorsListView extends StatefulWidget {
  const ColorsListView({super.key});

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
  Color color = const Color(0xffFFF7D1);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50 * 2,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) => const SizedBox(
          width: 10,
        ),
        itemBuilder: (context, index) => GestureDetector(
            onTap: () {
              color = kColors[index];
              BlocProvider.of<AddNoteCubit>(context).color = color;
              setState(() {});
            },
            child: ColorItem(
                isActive: color == kColors[index], color: kColors[index])),
        itemCount: kColors.length,
      ),
    );
  }
}
