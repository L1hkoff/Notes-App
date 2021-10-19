import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:notes_app/core/error/failure.dart';
import 'package:notes_app/features/notes/domain/entities/note.dart';
part 'notes_state.freezed.dart';

@freezed
class NotesState with _$NotesState {
  const factory NotesState.loading() = Loading;
  const factory NotesState.initial(List<Note> notes) = Initial;
  const factory NotesState.filling(List<Note> notes) = Filling;
  const factory NotesState.error(Failure failure) = Error;
}
