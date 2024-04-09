import 'package:flutter/material.dart';

import '../../constants/colors.dart';

///custom theme for text class
class VTextTheme{
  VTextTheme._(); ///used so can only be called from same class

  ///Light theme for text
  static TextTheme lightTextTheme= TextTheme(
    headlineLarge: const TextStyle().copyWith(fontSize: 32.0, fontWeight: FontWeight.bold, color: VColors.black),
    headlineMedium: const TextStyle().copyWith(fontSize: 24.0, fontWeight: FontWeight.w600, color: VColors.black),
    headlineSmall: const TextStyle().copyWith(fontSize: 18.0, fontWeight: FontWeight.w600, color: VColors.black),

    titleLarge: const TextStyle().copyWith(fontSize:16 ,fontWeight:FontWeight.w600, color: VColors.black),
    titleMedium: const TextStyle().copyWith(fontSize:16 ,fontWeight:FontWeight.w500, color: VColors.black),
    titleSmall: const TextStyle().copyWith(fontSize:16 ,fontWeight:FontWeight.w400, color: VColors.black),

    bodyLarge: const TextStyle().copyWith(fontSize: 14.0, fontWeight: FontWeight.w500, color: VColors.black),
    bodyMedium: const TextStyle().copyWith(fontSize: 14.0, fontWeight: FontWeight.normal, color: VColors.black),
    bodySmall: const TextStyle().copyWith(fontSize: 14.0, fontWeight: FontWeight.w400, color: VColors.black.withOpacity(0.5)),

    labelLarge: const TextStyle().copyWith(fontSize: 12.0, fontWeight:FontWeight.normal ,color: VColors.black),
    labelMedium: const TextStyle().copyWith(fontSize: 12.0, fontWeight:FontWeight.normal ,color: Colors.black.withOpacity(0.5)),
  );


  ///Dark Theme for text
  static TextTheme darkTextTheme= TextTheme(
    headlineLarge: const TextStyle().copyWith(fontSize: 32.0, fontWeight: FontWeight.bold, color: VColors.textWhite),
    headlineMedium: const TextStyle().copyWith(fontSize: 24.0, fontWeight: FontWeight.w600, color: VColors.textWhite),

    titleLarge: const TextStyle().copyWith(fontSize:16 ,fontWeight:FontWeight.w600, color: VColors.textWhite),
    titleMedium: const TextStyle().copyWith(fontSize:16 ,fontWeight:FontWeight.w500, color: VColors.textWhite),
    titleSmall: const TextStyle().copyWith(fontSize:16 ,fontWeight:FontWeight.w400, color: VColors.textWhite),

    bodyLarge: const TextStyle().copyWith(fontSize: 14.0, fontWeight: FontWeight.w500, color: VColors.textWhite),
    bodyMedium: const TextStyle().copyWith(fontSize: 14.0, fontWeight: FontWeight.normal, color: VColors.textWhite),
    bodySmall: const TextStyle().copyWith(fontSize: 14.0, fontWeight: FontWeight.w400, color: Colors.white.withOpacity(0.5)),

    labelLarge: const TextStyle().copyWith(fontSize: 12.0, fontWeight:FontWeight.normal ,color: VColors.textWhite),
    labelMedium: const TextStyle().copyWith(fontSize: 12.0, fontWeight:FontWeight.normal ,color: Colors.white.withOpacity(0.5)),
  );

}