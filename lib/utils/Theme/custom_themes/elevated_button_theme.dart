import 'package:flutter/material.dart';
import 'package:vadhyantram/utils/constants/colors.dart';

class VElevatedButtonTheme{
  VElevatedButtonTheme._(); //private constructor ->To avoid creating instances

  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: VColors.white,
      backgroundColor: VColors.buttonPrimary,
      disabledForegroundColor: VColors.buttonSecondary,
      disabledBackgroundColor: VColors.buttonSecondary,
      side: const BorderSide(color: Colors.blue),
      padding: const EdgeInsets.symmetric(vertical: 18),
      textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color:VColors.textWhite),
      shape:  RoundedRectangleBorder(borderRadius: BorderRadius.circular(12),),
    )
  );

  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          elevation: 0,
          foregroundColor: VColors.white,
          backgroundColor: VColors.buttonPrimary,
          disabledForegroundColor: VColors.buttonSecondary,
          disabledBackgroundColor:  VColors.buttonSecondary,
          side: const BorderSide(color: Colors.blue),
          padding: const EdgeInsets.symmetric(vertical: 18),
          textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: VColors.textWhite),
          shape:  RoundedRectangleBorder(borderRadius: BorderRadius.circular(12),),
      )
  );


}