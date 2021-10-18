import 'package:intl/intl.dart';

extension FormatDateTime on DateTime {
  String get formatedDate =>
      '${day < 10 ? '0$day' : day}.${DateFormat.M().format(this)}.$year';
}
