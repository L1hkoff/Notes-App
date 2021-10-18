import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:notes_app/core/localization/localization.dart';
import 'package:notes_app/core/theme/constants.dart';
import 'package:notes_app/core/widgets/button_widget.dart';

class AddNoteWidget extends StatefulWidget {
  const AddNoteWidget({
    Key? key,
    required this.isFilling,
    required this.onStartFilling,
    required this.onCancelButtonPressed,
    required this.onAddButtonPressed,
  }) : super(key: key);

  final bool isFilling;
  final AsyncCallback onStartFilling;
  final AsyncCallback onCancelButtonPressed;
  final Future<void> Function({required String text, required String title})
      onAddButtonPressed;

  @override
  State<AddNoteWidget> createState() => _AddNoteWidgetState();
}

class _AddNoteWidgetState extends State<AddNoteWidget>
    with TickerProviderStateMixin {
  late final AnimationController _animationController = AnimationController(
    duration: Constants.defaultDuration,
    vsync: this,
  );

  late final Animation<double> _animation = CurvedAnimation(
    parent: _animationController,
    curve: Curves.ease,
  );

  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _textController = TextEditingController();

  final FocusNode _titleFocus = FocusNode();
  final FocusNode _textFocus = FocusNode();

  void _checkForExpand() {
    if (widget.isFilling) {
      _animationController.forward();
    } else {
      _animationController.reverse();
    }
  }

  void _clearAndUnfocus() {
    _titleController.clear();
    _textController.clear();
    _titleFocus.unfocus();
    _textFocus.unfocus();
  }

  Future<void> _onCancelButtonPressed() async {
    await widget.onCancelButtonPressed();
    _clearAndUnfocus();
  }

  Future<void> _onAddButtonPressed() async {
    if (_validateControllers() == false) return;
    await widget.onAddButtonPressed(
      title: _titleController.text,
      text: _textController.text,
    );
    _clearAndUnfocus();
  }

  bool _validateControllers() {
    if (_titleController.text.isEmpty && _textController.text.isEmpty) {
      return false;
    }
    return true;
  }

  @override
  void didUpdateWidget(AddNoteWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    _checkForExpand();
  }

  @override
  void initState() {
    super.initState();
    _checkForExpand();
  }

  @override
  void dispose() {
    _animationController.dispose();
    _titleController.dispose();
    _textController.dispose();
    _titleFocus.dispose();
    _textFocus.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final InputBorder _border = UnderlineInputBorder(
      borderSide: BorderSide(color: Theme.of(context).hintColor, width: 2),
    );
    return Container(
      color: widget.isFilling
          ? Theme.of(context).primaryColorDark.withOpacity(0.3)
          : Colors.transparent,
      child: Container(
        margin: const EdgeInsets.all(8),
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          borderRadius: BorderRadius.circular(8),
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Theme.of(context).hintColor.withOpacity(0.5),
              spreadRadius: 4,
              blurRadius: 8,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          children: <Widget>[
            SizeTransition(
              axis: Axis.vertical,
              axisAlignment: 1,
              sizeFactor: _animation,
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ButtonWidget(
                      onTap: () async => _onCancelButtonPressed(),
                      text: Locals.lastLocale.cancel,
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: ButtonWidget(
                      onTap: () async => await _onAddButtonPressed(),
                      text: Locals.lastLocale.add,
                    ),
                  ),
                ],
              ),
            ),
            TextFormField(
              controller: _titleController,
              focusNode: _titleFocus,
              onTap: widget.onStartFilling,
              autocorrect: false,
              enableSuggestions: false,
              style: Theme.of(context).textTheme.bodyText1,
              maxLength: 48,
              textInputAction: TextInputAction.next,
              textCapitalization: TextCapitalization.sentences,
              keyboardType: TextInputType.text,
              scrollPhysics: const BouncingScrollPhysics(),
              decoration: InputDecoration(
                counterText: '',
                isDense: true,
                contentPadding: const EdgeInsets.only(bottom: 10, top: 2),
                focusedBorder: _border,
                hintText: Locals.lastLocale.title,
                hintStyle: Theme.of(context)
                    .textTheme
                    .bodyText1!
                    .copyWith(color: Theme.of(context).hintColor),
              ),
            ),
            const SizedBox(height: 16),
            TextFormField(
              controller: _textController,
              focusNode: _textFocus,
              onTap: widget.onStartFilling,
              style: Theme.of(context).textTheme.bodyText2,
              maxLength: 512,
              minLines: 1,
              maxLines: 8,
              textInputAction: TextInputAction.newline,
              textCapitalization: TextCapitalization.sentences,
              keyboardType: TextInputType.multiline,
              scrollPhysics: const BouncingScrollPhysics(),
              decoration: InputDecoration(
                counterText: '',
                isDense: true,
                contentPadding: const EdgeInsets.only(bottom: 10, top: 2),
                enabledBorder: InputBorder.none,
                focusedBorder: _border,
                hintText: Locals.lastLocale.startTyping,
                hintStyle: Theme.of(context)
                    .textTheme
                    .bodyText2!
                    .copyWith(color: Theme.of(context).hintColor),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
