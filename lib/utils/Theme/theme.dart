
import 'package:flutter/material.dart';
import 'package:vadhyantram/utils/Theme/custom_themes/appbar_theme.dart';
import 'package:vadhyantram/utils/Theme/custom_themes/bottom_sheet_theme.dart';
import 'package:vadhyantram/utils/Theme/custom_themes/elevated_button_theme.dart';
import 'package:vadhyantram/utils/Theme/custom_themes/text_field_theme.dart';
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
    appBarTheme: VAppbarTheme.lightAppbarTheme,
    bottomSheetTheme: VBottomSheetTheme.lightBottomSheetTheme,
    inputDecorationTheme: VTextFormFieldTheme.lightInputDecorationTheme,

  );

  //Dark Theme
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    primaryColor: Colors.lightBlueAccent,
    scaffoldBackgroundColor: Colors.black,
    textTheme: VTextTheme.darkTextTheme,
    elevatedButtonTheme: VElevatedButtonTheme.darkElevatedButtonTheme,
    appBarTheme: VAppbarTheme.darkAppbarTheme,
    bottomSheetTheme: VBottomSheetTheme.darkBottomSheetTheme,
    inputDecorationTheme: VTextFormFieldTheme.darkInputDecorationTheme,

  );

}