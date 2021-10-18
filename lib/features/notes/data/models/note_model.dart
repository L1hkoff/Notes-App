import 'package:notes_app/features/notes/data/models/hive_note.dart';
import 'package:notes_app/features/notes/domain/entities/note.dart';

class NoteModel extends Note {
  const NoteModel({
    required String title,
    required String text,
    required DateTime date,
    dynamic key,
  }) : super(title: title, text: text, date: date, key: key);

  factory NoteModel.fromHive(HiveNote hiveNote) => NoteModel(
        title: hiveNote.title,
        text: hiveNote.text,
        date: hiveNote.date,
        key: hiveNote.key,
      );

  HiveNote toHive() => HiveNote(title: title, text: text, date: date);
}
