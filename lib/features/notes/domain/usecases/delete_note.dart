import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:notes_app/core/error/failure.dart';
import 'package:notes_app/core/usecases/usecase.dart';
import 'package:notes_app/features/notes/data/models/note_model.dart';
import 'package:notes_app/features/notes/domain/repositories/notes_repository.dart';

class DeleteNote implements UseCase<bool, DeleteNoteParams> {
  DeleteNote(this.notesRepository);

  final NotesRepository notesRepository;

  @override
  Future<Either<Failure, bool>> call(DeleteNoteParams params) async {
    return await notesRepository.deleteNote(params.note);
  }
}

class DeleteNoteParams extends Equatable {
  const DeleteNoteParams({required this.note});

  final NoteModel note;

  @override
  List<Object> get props => [note];
}
