import 'package:dartz/dartz.dart';
import 'package:notes_app/core/error/failure.dart';
import 'package:notes_app/core/usecases/usecase.dart';
import 'package:notes_app/features/notes/domain/entities/note.dart';
import 'package:notes_app/features/notes/domain/repositories/notes_repository.dart';

class AddNote implements UseCase<bool, Note> {
  AddNote(this.notesRepository);

  final NotesRepository notesRepository;

  @override
  Future<Either<Failure, bool>> call(Note note) async {
    return await notesRepository.addNote(note);
  }
}
