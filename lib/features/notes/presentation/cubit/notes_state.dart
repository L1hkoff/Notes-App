import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:notes_app/core/error/failure.dart';
import 'package:notes_app/features/notes/data/models/note_model.dart';
part 'notes_state.freezed.dart';

@freezed
class NotesState with _$NotesState {
  const factory NotesState.loading() = Loading;
  const factory NotesState.initial(List<NoteModel> notes) = Initial;
  const factory NotesState.filling(List<NoteModel> notes) = Filling;
  const factory NotesState.error(Failure failure) = Error;
}
