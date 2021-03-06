import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/core/localization/localization.dart';
import 'package:notes_app/core/widgets/error_widget.dart';
import 'package:notes_app/core/widgets/loading_widget.dart';
import 'package:notes_app/features/notes/domain/entities/note.dart';
import 'package:notes_app/features/notes/presentation/cubit/notes_cubit.dart';
import 'package:notes_app/features/notes/presentation/cubit/notes_state.dart';
import 'package:notes_app/features/notes/presentation/widgets/notes_widget.dart';
import 'package:notes_app/core/di/injection_container.dart';

class NotesPage extends StatelessWidget {
  const NotesPage({Key? key}) : super(key: key);

  NotesWidget _notesWidget({
    required BuildContext context,
    required bool isFilling,
    required List<Note> notes,
  }) =>
      NotesWidget(
        isFilling: isFilling,
        notes: notes,
        onStartFilling: BlocProvider.of<NotesCubit>(context).emitFilling,
        onCancelButtonPressed: BlocProvider.of<NotesCubit>(context).emitInitial,
        onAddButtonPressed: BlocProvider.of<NotesCubit>(context).addNoteToHive,
        onDeleteAction: BlocProvider.of<NotesCubit>(context).deleteNoteFromHive,
      );

  Widget _buildBody(BuildContext context) {
    return BlocProvider(
      create: (_) => DI.getIt<NotesCubit>()..init(),
      child: BlocBuilder<NotesCubit, NotesState>(
        builder: (BuildContext context, NotesState state) {
          return state.when(
            initial: (notes) => _notesWidget(
              context: context,
              isFilling: false,
              notes: notes,
            ),
            loading: () => const LoadingWidget(),
            filling: (notes) => _notesWidget(
              context: context,
              isFilling: true,
              notes: notes,
            ),
            error: (failure) => FailureWidget(failure),
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(
          Locals.lastLocale.notes,
          style: Theme.of(context).textTheme.headline4,
        ),
        centerTitle: true,
      ),
      body: _buildBody(context),
    );
  }
}
