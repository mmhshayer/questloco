import 'package:flutter/material.dart';
import 'package:questloco/themes/widget_themes/text_theme.dart';

class AppTheme {
  AppTheme._();

  static final ThemeData lightTheme = ThemeData(
    textTheme: AppTextTheme.lightTextTheme,
    colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.green)
        .copyWith(secondary: Colors.greenAccent),
  );

  static final ThemeData darkTheme = ThemeData(
    textTheme: AppTextTheme.darkTextTheme,
    colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.green)
        .copyWith(secondary: Colors.greenAccent),
  );
}
