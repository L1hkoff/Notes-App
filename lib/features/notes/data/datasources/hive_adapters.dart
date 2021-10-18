import 'package:hive/hive.dart';
import 'package:notes_app/features/notes/data/models/hive_note.dart';

void registerHiveAdapters() {
  if (Hive.isAdapterRegistered(0) == false) {
    Hive.registerAdapter(HiveNoteAdapter());
  }
}
