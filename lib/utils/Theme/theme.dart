
import 'package:flutter/material.dart';
import 'package:vadhyantram/utils/Theme/custom_themes/elevated_button_theme.dart';
import 'package:vadhyantram/utils/Theme/custom_themes/text_theme.dart';

class VAppTheme{
  VAppTheme._();

  // Light Theme
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    primaryColor: Colors.lightBlueAccent,
    scaffoldBackgroundColor: Colors.white,
    textTheme: VTextTheme.lightTextTheme,
    elevatedButtonTheme: VElevatedButtonTheme.lightElevatedButtonTheme,

  );

  //Dark Theme
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    primaryColor: Colors.lightBlueAccent,
    scaffoldBackgroundColor: Colors.black,
    textTheme: VTextTheme.darkTextTheme,
    elevatedButtonTheme: VElevatedButtonTheme.darkElevatedButtonTheme,

  );

}