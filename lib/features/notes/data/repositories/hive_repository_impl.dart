import 'package:dartz/dartz.dart';
import 'package:notes_app/core/error/failure.dart';
import 'package:notes_app/features/notes/data/datasources/hive_datasource.dart';
import 'package:notes_app/features/notes/data/models/note_model.dart';
import 'package:notes_app/features/notes/domain/repositories/notes_repository.dart';

class NotesRepositoryImpl implements NotesRepository {
  NotesRepositoryImpl({required this.hiveDatasource});

  final Datasource hiveDatasource;

  @override
  Future<Either<Failure, bool>> addNote(NoteModel noteModel) async {
    try {
      await hiveDatasource.addNote(noteModel);
      return const Right(true);
    } catch (e) {
      return Left(Failure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, bool>> deleteNote(NoteModel noteModel) async {
    try {
      await hiveDatasource.deleteNote(noteModel);
      return const Right(true);
    } catch (e) {
      return Left(Failure(e.toString()));
    }
  }
}
