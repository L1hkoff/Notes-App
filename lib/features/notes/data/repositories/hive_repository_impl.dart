import 'package:dartz/dartz.dart';
import 'package:notes_app/core/error/failure.dart';
import 'package:notes_app/features/notes/data/datasources/hive_datasource.dart';
import 'package:notes_app/features/notes/data/models/note_model.dart';
import 'package:notes_app/features/notes/domain/entities/note.dart';
import 'package:notes_app/features/notes/domain/repositories/notes_repository.dart';

class NotesRepositoryImpl implements NotesRepository {
  NotesRepositoryImpl({required this.hiveDatasource});

  final Datasource hiveDatasource;

  @override
  Future<Either<Failure, bool>> addNote(Note note) async {
    try {
      await hiveDatasource.addNote(note);
      return const Right(true);
    } catch (e) {
      return Left(Failure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, bool>> deleteNote(Note note) async {
    try {
      await hiveDatasource.deleteNote(note);
      return const Right(true);
    } catch (e) {
      return Left(Failure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<NoteModel>>> getNotes() async {
    try {
      return Right(await hiveDatasource.getNotes());
    } catch (e) {
      return Left(Failure(e.toString()));
    }
  }
}
