import 'package:flutter/material.dart';

import '../../constants/colors.dart';

class VAppbarTheme{
  VAppbarTheme._();

  static const lightAppbarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: true,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(color: VColors.black, size: 24),
    actionsIconTheme: IconThemeData(color: VColors.black, size: 26),
    titleTextStyle: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600, color: VColors.textPrimary),
  );

///Dark theme for appbar
  static const darkAppbarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: true,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(color: VColors.black, size: 24),
    actionsIconTheme: IconThemeData(color: VColors.white, size: 26),
    titleTextStyle: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600, color: VColors.textWhite),

  );

}