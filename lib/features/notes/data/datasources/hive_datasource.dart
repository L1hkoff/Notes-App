import 'package:hive/hive.dart';
import 'package:notes_app/features/notes/data/models/hive_note.dart';
import 'package:notes_app/features/notes/data/models/note_model.dart';
import 'package:notes_app/features/notes/domain/entities/note.dart';

abstract class Datasource {
  Future<void> addNote(Note note);

  Future<void> deleteNote(Note note);

  Future<List<NoteModel>> getNotes();
}

class HiveDatasourceImpl implements Datasource {
  HiveDatasourceImpl({required this.notesBox});

  final Box<HiveNote> notesBox;

  @override
  Future<void> addNote(Note note) async {
    final NoteModel noteModel = NoteModel(
      title: note.title,
      text: note.text,
      date: note.date,
    );
    await notesBox.add(noteModel.toHive());
  }

  @override
  Future<void> deleteNote(Note note) async {
    final NoteModel noteModel = NoteModel(
      title: note.title,
      text: note.text,
      date: note.date,
      key: note.key,
    );
    await notesBox.delete(noteModel.key);
  }

  @override
  Future<List<NoteModel>> getNotes() async {
    return notesBox.values
        .map((hiveNote) => NoteModel.fromHive(hiveNote))
        .toList();
  }
}
