import 'package:hive/hive.dart';

part 'hive_note.g.dart';

@HiveType(typeId: 0)
class HiveNote extends HiveObject {
  HiveNote({
    required this.title,
    required this.text,
    required this.date,
  });

  @HiveField(0)
  final String title;
  @HiveField(1)
  final String text;
  @HiveField(2)
  final DateTime date;
}
