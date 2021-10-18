import 'package:dartz/dartz.dart';
import 'package:notes_app/core/error/failure.dart';
import 'package:notes_app/features/notes/data/models/note_model.dart';

abstract class NotesRepository {
  Future<Either<Failure, bool>> addNote(NoteModel noteModel);
  Future<Either<Failure, bool>> deleteNote(NoteModel noteModel);
}
