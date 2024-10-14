import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/models/note_model.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

  Color color = const Color(0xffFFF7D1);

  addNote(NoteModel note) {
    emit(AddNoteLoading());
    try {
      note.color = color.value;
      Hive.box<NoteModel>(kOpenBox).add(note);
      emit(AddNoteSuccess());
    } catch (e) {
      emit(
        AddNoteFailure(errmsg: e.toString()),
      );
    }
  }
}
