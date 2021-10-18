import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:notes_app/core/error/failure.dart';
import 'package:notes_app/core/usecases/usecase.dart';
import 'package:notes_app/features/notes/data/models/note_model.dart';
import 'package:notes_app/features/notes/domain/repositories/notes_repository.dart';

class AddNote implements UseCase<bool, AddNoteParams> {
  AddNote(this.notesRepository);

  final NotesRepository notesRepository;

  @override
  Future<Either<Failure, bool>> call(AddNoteParams params) async {
    return await notesRepository.addNote(params.note);
  }
}

class AddNoteParams extends Equatable {
  const AddNoteParams({required this.note});

  final NoteModel note;

  @override
  List<Object> get props => [note];
}
