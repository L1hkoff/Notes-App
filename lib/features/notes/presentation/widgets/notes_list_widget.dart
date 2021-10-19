import 'package:flutter/material.dart';
import 'package:notes_app/features/notes/domain/entities/note.dart';
import 'package:notes_app/features/notes/presentation/widgets/note_tile_widget.dart';

class NotesListWidget extends StatelessWidget {
  const NotesListWidget({
    Key? key,
    required this.isFilling,
    required this.notes,
    required this.onDeleteAction,
  }) : super(key: key);

  final bool isFilling;
  final List<Note> notes;
  final Future<void> Function({required Note note}) onDeleteAction;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        ListView.builder(
          physics: const BouncingScrollPhysics(),
          itemCount: notes.length,
          itemBuilder: (_, int index) {
            return NoteTileWidget(
              note: notes[index],
              onDeleteAction: onDeleteAction,
            );
          },
        ),
        if (isFilling)
          ModalBarrier(
            color: Theme.of(context).primaryColorDark.withOpacity(0.3),
          ),
      ],
    );
  }
}
