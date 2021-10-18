import 'package:flutter/material.dart';

@immutable
abstract class LocaleBase {
  String get locName;
  String get appName;
  String get error;
  String get notes;
  String get title;
  String get startTyping;
  String get cancel;
  String get add;
  String get delete;
}
