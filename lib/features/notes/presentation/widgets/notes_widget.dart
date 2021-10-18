import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:notes_app/features/notes/data/models/note_model.dart';
import 'package:notes_app/features/notes/presentation/widgets/add_note_widget.dart';
import 'package:notes_app/features/notes/presentation/widgets/notes_list_widget.dart';

class NotesWidget extends StatelessWidget {
  const NotesWidget({
    Key? key,
    required this.isFilling,
    required this.notes,
    required this.onStartFilling,
    required this.onCancelButtonPressed,
    required this.onAddButtonPressed,
    required this.onDeleteAction,
  }) : super(key: key);

  final bool isFilling;
  final List<NoteModel> notes;
  final AsyncCallback onStartFilling;
  final AsyncCallback onCancelButtonPressed;
  final Future<void> Function({required String text, required String title})
      onAddButtonPressed;
  final Future<void> Function({required NoteModel note}) onDeleteAction;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        AddNoteWidget(
          isFilling: isFilling,
          onStartFilling: onStartFilling,
          onCancelButtonPressed: onCancelButtonPressed,
          onAddButtonPressed: onAddButtonPressed,
        ),
        Expanded(
          child: NotesListWidget(
            isFilling: isFilling,
            notes: notes,
            onDeleteAction: onDeleteAction,
          ),
        ),
      ],
    );
  }
}
