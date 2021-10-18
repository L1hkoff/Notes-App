import 'package:flutter/material.dart';
import 'package:notes_app/core/error/failure.dart';

class FailureWidget extends StatelessWidget {
  const FailureWidget(this.failure, {Key? key}) : super(key: key);

  final Failure failure;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        failure.message,
        style: Theme.of(context).textTheme.bodyText1,
      ),
    );
  }
}
