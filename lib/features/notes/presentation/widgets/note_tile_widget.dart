import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:notes_app/core/extensions/extensions.dart';
import 'package:notes_app/core/localization/localization.dart';
import 'package:notes_app/features/notes/data/models/note_model.dart';
import 'package:swipeable_tile/swipeable_tile.dart';

class NoteTileWidget extends StatelessWidget {
  const NoteTileWidget(
      {Key? key, required this.note, required this.onDeleteAction})
      : super(key: key);

  final NoteModel note;
  final Future<void> Function({required NoteModel note}) onDeleteAction;

  @override
  Widget build(BuildContext context) {
    return SwipeableTile.swipeToTigger(
      color: Theme.of(context).scaffoldBackgroundColor,
      direction: SwipeDirection.endToStart,
      onSwiped: (_) async => await onDeleteAction(note: note),
      backgroundBuilder: (_, direction, progress) {
        bool vibrated = false;
        return AnimatedBuilder(
          animation: progress,
          builder: (_, __) {
            if (progress.value > 0.3 && !vibrated) {
              HapticFeedback.vibrate();
              vibrated = true;
            } else if (progress.value < 0.3) {
              vibrated = false;
            }
            return Container(
              color: Theme.of(context).primaryColorDark.withOpacity(0.1),
              padding: const EdgeInsets.only(right: 16),
              alignment: Alignment.centerRight,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Icon(
                    Icons.delete,
                  ),
                  Text(
                    Locals.lastLocale.delete,
                    style: Theme.of(context).textTheme.bodyText2,
                  )
                ],
              ),
            );
          },
        );
      },
      key: UniqueKey(),
      child: Container(
        margin: const EdgeInsets.all(8),
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              note.title,
              style: Theme.of(context)
                  .textTheme
                  .bodyText1!
                  .copyWith(fontWeight: FontWeight.bold),
              maxLines: 1,
              overflow: TextOverflow.fade,
            ),
            Divider(
              thickness: 1,
              color: Theme.of(context).hintColor,
            ),
            Text(
              note.text,
              style: Theme.of(context).textTheme.bodyText1,
              maxLines: 2,
              overflow: TextOverflow.fade,
            ),
            const SizedBox(height: 8),
            Text(
              note.date.formatedDate,
              style: Theme.of(context).textTheme.subtitle2,
              maxLines: 2,
              overflow: TextOverflow.fade,
            ),
          ],
        ),
      ),
    );
  }
}
