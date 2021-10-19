import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/core/error/failure.dart';
import 'package:notes_app/core/usecases/usecase.dart';
import 'package:notes_app/features/notes/data/models/note_model.dart';
import 'package:notes_app/features/notes/domain/entities/note.dart';
import 'package:notes_app/features/notes/domain/usecases/add_note.dart';
import 'package:notes_app/features/notes/domain/usecases/delete_note.dart';
import 'package:notes_app/features/notes/domain/usecases/get_notes.dart';

import 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit({
    required this.addNote,
    required this.deleteNote,
    required this.getNotes,
  }) : super(const Loading());

  final AddNote addNote;
  final DeleteNote deleteNote;
  final GetNotes getNotes;

  List<Note> notes = [];

  Future<void> init() async {
    await updateNotes();
    emit(Initial(notes));
  }

  Future<void> emitFilling() async {
    emit(Filling(notes));
  }

  Future<void> emitInitial() async {
    emit(Initial(notes));
  }

  Future<void> updateNotes() async {
    final Either<Failure, List<Note>> failureOrNotes =
        await getNotes(NoParams());

    failureOrNotes.fold(
      (failure) => emit(Error(failure)),
      (notes) => this.notes = notes,
    );
  }

  Future<void> addNoteToHive({
    required String title,
    required String text,
  }) async {
    final NoteModel note = NoteModel(
      title: title,
      text: text,
      date: DateTime.now(),
    );

    final Either<Failure, bool> failureOrAdd = await addNote(note);

    await updateNotes();

    failureOrAdd.fold(
      (failure) => emit(Error(failure)),
      (add) => emit(Initial(notes)),
    );
  }

  Future<void> deleteNoteFromHive({required Note note}) async {
    final Either<Failure, bool> failureOrDelete = await deleteNote(note);

    await updateNotes();

    failureOrDelete.fold(
      (failure) => emit(Error(failure)),
      (delete) => emit(Initial(notes)),
    );
  }
}
