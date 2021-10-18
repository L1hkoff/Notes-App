import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes_app/core/localization/localization.dart';
import 'package:notes_app/core/theme/theme.dart';
import 'package:notes_app/features/notes/presentation/pages/notes_page.dart';
import 'core/localization/locale_base.dart';
import 'features/notes/data/datasources/hive_adapters.dart';

import 'core/di/injection_container.dart' as di;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  registerHiveAdapters();
  await di.init();
  runApp(const NoteApp());
}

class NoteApp extends StatelessWidget {
  const NoteApp({Key? key}) : super(key: key);

  static final Map<String, LocaleBase> _locList = initI18n();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Notes App',
      theme: Themes.lightTheme,
      localizationsDelegates: <LocalizationsDelegate<dynamic>>[
        GlobalWidgetsLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        AppLocalizationsDelegate(_locList),
      ],
      supportedLocales: _locList.keys.map(
        (String locale) {
          final List<String> _locale = locale.split('_');
          final String language = _locale[0];
          final String country = _locale[1];
          return Locale(language, country);
        },
      ),
      home: const NotesPage(),
    );
  }
}
