import 'package:equatable/equatable.dart';

class Note extends Equatable {
  const Note({
    required this.title,
    required this.text,
    required this.date,
    required this.key,
  });

  final String title;
  final String text;
  final DateTime date;
  final dynamic key;

  @override
  List<Object?> get props => [title, text, date, key];
}
