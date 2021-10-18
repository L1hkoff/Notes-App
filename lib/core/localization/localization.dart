import 'dart:async' show Future;

import 'package:flutter/foundation.dart' show SynchronousFuture;
import 'package:flutter/material.dart' show Locale, LocalizationsDelegate;

import 'locale_base.dart';
import 'locales/ru.dart';

class Locals {
  Locals(this.locale, this.localizedValues) {
    current = localizedValues[locale.languageCode] ?? RuLoc();
  }
  final Map<String, LocaleBase> localizedValues;
  final Locale locale;

  static LocaleBase lastLocale = RuLoc();

  late LocaleBase current;
}

class AppLocalizationsDelegate extends LocalizationsDelegate<Locals> {
  const AppLocalizationsDelegate(this.localizedValues);

  final Map<String, LocaleBase> localizedValues;

  @override
  bool isSupported(Locale locale) =>
      localizedValues.keys.toList().contains(locale.toString());

  @override
  Future<Locals> load(Locale locale) {
    return SynchronousFuture<Locals>(
      Locals(
        isSupported(locale) ? locale : const Locale('en', 'US'),
        localizedValues,
      ),
    );
  }

  @override
  bool shouldReload(AppLocalizationsDelegate old) =>
      old.localizedValues != localizedValues;
}

Map<String, LocaleBase> initI18n() {
  final Map<String, LocaleBase> list = <String, LocaleBase>{};
  list['ru_RU'] = RuLoc();
  return list;
}
