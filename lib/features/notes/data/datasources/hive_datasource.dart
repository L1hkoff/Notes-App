import 'package:hive/hive.dart';
import 'package:notes_app/features/notes/data/models/hive_note.dart';
import 'package:notes_app/features/notes/data/models/note_model.dart';

abstract class Datasource {
  Future<void> addNote(NoteModel noteModel);

  Future<void> deleteNote(NoteModel noteModel);
}

class HiveDatasourceImpl implements Datasource {
  HiveDatasourceImpl({required this.notesBox});

  final Box<HiveNote> notesBox;

  @override
  Future<void> addNote(NoteModel noteModel) async {
    await notesBox.add(noteModel.toHive());
  }

  @override
  Future<void> deleteNote(NoteModel noteModel) async {
    await notesBox.delete(noteModel.key);
  }
}
