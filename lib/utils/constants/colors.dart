import 'package:flutter/material.dart';

class VColors{
  VColors._();

  //Basic colors
  static const Color primary = Color(0xff0e2b9b);
  static const Color secondary = Color(0xfff3d132);
  static const Color accent = Color(0xff8d9ff8);

//Text colors
  static const Color textPrimary = Color(0xff171616);
  static const Color textSecondary = Color(0xff383636);
  static const Color textWhite = Color(0xffffffff);

  //Background colors
  static const Color light = Color(0xFFF6F6F6);
  static const Color dark = Color(0xFF272727);
  static const Color primaryBackground = Color(0xFFF3F5FF);

  //Background container colors
  static const Color lightContainer = Color(0xFFF6F6F6);
  static  Color darkContainer = VColors.white.withOpacity(0.2);

  //Button colors
  static const Color buttonPrimary = Color(0xFF2659E7);
  static const Color buttonSecondary = Color(0xFF646363);
  static const Color buttonDisabled = Color(0xFFC4C4C4);

  //Boarder Colors
  static const Color boarderPrimary = Color(0xFF969292);
  static const Color boarderSecondary = Color(0xFFCBC7C7);

  //Error and validation color
  static const Color error = Color(0xFFD32F2F);
  static const Color success = Color(0xFF388E3C);
  static const Color warning = Color(0xFFF57C00);
  static const Color info = Color(0xFF1976D2);

  //Neutral colors
  static const Color black = Color(0xFF232323);
  static const Color darkerGrey = Color(0xFF4f4f4f);
  static const Color darkGrey = Color(0xFF939393);
  static const Color grey = Color(0xFFE0E0E0);
  static const Color softGrey = Color(0xFFF4F4F4);
  static const Color lightGrey = Color(0xFFF9F9F9);
  static const Color white = Color(0xFFFFFFFF);

}