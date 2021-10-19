import 'package:dartz/dartz.dart';
import 'package:notes_app/core/error/failure.dart';
import 'package:notes_app/features/notes/data/models/note_model.dart';
import 'package:notes_app/features/notes/domain/entities/note.dart';

abstract class NotesRepository {
  Future<Either<Failure, bool>> addNote(Note note);
  Future<Either<Failure, bool>> deleteNote(Note note);
  Future<Either<Failure, List<NoteModel>>> getNotes();
}
