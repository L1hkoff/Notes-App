import 'package:dartz/dartz.dart';
import 'package:notes_app/core/error/failure.dart';
import 'package:notes_app/core/usecases/usecase.dart';
import 'package:notes_app/features/notes/domain/entities/note.dart';
import 'package:notes_app/features/notes/domain/repositories/notes_repository.dart';

class GetNotes implements UseCase<List<Note>, NoParams> {
  GetNotes(this.notesRepository);

  final NotesRepository notesRepository;

  @override
  Future<Either<Failure, List<Note>>> call(NoParams noParams) async {
    return await notesRepository.getNotes();
  }
}
