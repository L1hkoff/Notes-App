import 'package:meta/meta.dart';
import 'package:notes_app/core/localization/locale_base.dart';

@immutable
class RuLoc implements LocaleBase {
  @override
  String get locName => 'ru';
  @override
  String get appName => 'Notes App';
  @override
  String get error => 'Ошибка';
  @override
  String get notes => 'Заметки';
  @override
  String get title => 'Заголовок';
  @override
  String get startTyping => 'Начните ввод';
  @override
  String get cancel => 'Отмена';
  @override
  String get add => 'Доабвить';
  @override
  String get delete => 'Удалить';
}
