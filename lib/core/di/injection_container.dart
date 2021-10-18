import 'package:get_it/get_it.dart';
import 'package:hive/hive.dart';
import 'package:notes_app/features/notes/data/datasources/hive_datasource.dart';
import 'package:notes_app/features/notes/data/models/hive_note.dart';
import 'package:notes_app/features/notes/data/repositories/hive_repository_impl.dart';
import 'package:notes_app/features/notes/domain/repositories/notes_repository.dart';
import 'package:notes_app/features/notes/domain/usecases/add_note.dart';
import 'package:notes_app/features/notes/domain/usecases/delete_note.dart';
import 'package:notes_app/features/notes/presentation/cubit/notes_cubit.dart';

final GetIt getIt = GetIt.instance;

Future<void> init() async {
  // Bloc
  getIt.registerFactory<NotesCubit>(
    () => NotesCubit(
        addNote: getIt(), deleteNote: getIt(), hiveNotesBox: getIt()),
  );
  // Data sources
  getIt.registerLazySingleton<Datasource>(
    () => HiveDatasourceImpl(notesBox: getIt()),
  );

  // Repository
  getIt.registerLazySingleton<NotesRepository>(
    () => NotesRepositoryImpl(hiveDatasource: getIt()),
  );

  // Use cases
  getIt.registerLazySingleton<AddNote>(() => AddNote(getIt()));
  getIt.registerLazySingleton<DeleteNote>(() => DeleteNote(getIt()));

  // External
  final Box<HiveNote> hiveNotesBox = await Hive.openBox<HiveNote>('notes');
  getIt.registerLazySingleton<Box<HiveNote>>(() => hiveNotesBox);
}
