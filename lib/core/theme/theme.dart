import 'package:flutter/material.dart' hide Theme, ThemeMode;
import 'package:notes_app/core/theme/constants.dart';

part 'colors.dart';

class Themes {
  static ThemeData get lightTheme => ThemeData(
        primaryColor: _AppColors.whiteColor,
        primaryColorDark: _AppColors.blackColor,
        brightness: Brightness.light,
        hintColor: _AppColors.greyColor,
        scaffoldBackgroundColor: _AppColors.lightGreyColor1,
        iconTheme: const IconThemeData(
          color: _AppColors.blackColor,
          size: Constants.bigIconSize,
        ),
        inputDecorationTheme: const InputDecorationTheme(
          fillColor: _AppColors.whiteColor,
          hintStyle: TextStyle(
            color: _AppColors.greyColor,
            fontSize: Constants.bigFontSize,
          ),
        ),
        appBarTheme: const AppBarTheme(backgroundColor: _AppColors.whiteColor),
        textTheme: const TextTheme(
          bodyText1: TextStyle(
            fontSize: Constants.extraFontSize,
            color: _AppColors.blackColor,
            fontWeight: FontWeight.normal,
          ),
          bodyText2: TextStyle(
            fontSize: Constants.bigFontSize,
            color: _AppColors.blackColor,
          ),
          subtitle2: TextStyle(
            color: _AppColors.greyColor,
            fontSize: Constants.mediumFontSize,
            fontWeight: FontWeight.normal,
          ),
          headline4: TextStyle(
            color: _AppColors.blackColor,
            fontSize: Constants.extraFontSize,
            fontWeight: FontWeight.bold,
          ),
        ),
        textSelectionTheme: const TextSelectionThemeData(
          cursorColor: _AppColors.blackColor,
          selectionColor: _AppColors.greyColor,
          selectionHandleColor: _AppColors.lightGreyColor3,
        ),
      );
}
