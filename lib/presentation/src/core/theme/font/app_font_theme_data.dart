import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_font_theme_data.freezed.dart';

const String fontFamily = 'roboto-regular';

@freezed
abstract class AppFontThemeData with _$AppFontThemeData {
  const factory AppFontThemeData({
    required TextStyle headline2,
    required TextStyle headline3,
    required TextStyle headline4,
    required TextStyle bodyText1,
    required TextStyle bodyText2,
    required TextStyle caption,
    required TextStyle label,
    required TextStyle button,
    required TextStyle buttonText,
  }) = _AppFontThemeData;

  static const theme = AppFontThemeData(
    // Titre H2.
    headline2: TextStyle(
      fontFamily: fontFamily,
      fontSize: 26,
      fontWeight: FontWeight.w500,
    ),
    // Titre H3.
    headline3: TextStyle(
      fontFamily: fontFamily,
      fontSize: 20,
      fontWeight: FontWeight.w500,
    ),
    // Titre H4.
    headline4: TextStyle(
      fontFamily: fontFamily,
      fontSize: 18,
      fontWeight: FontWeight.w600,
    ),
    // Texte paragraphe.
    bodyText1: TextStyle(
      fontFamily: fontFamily,
      fontSize: 16,
      fontWeight: FontWeight.w400,
    ),
    // Texte secondaire.
    bodyText2: TextStyle(
      fontFamily: fontFamily,
      fontSize: 13,
      fontWeight: FontWeight.w400,
    ),
    // Texte informatif.
    caption: TextStyle(
      fontFamily: fontFamily,
      fontSize: 14,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.italic,
    ),
    // Texte label field.
    label: TextStyle(
      fontFamily: fontFamily,
      fontSize: 16,
      fontWeight: FontWeight.w400,
    ),
    // Texte bouton.
    button: TextStyle(
      fontFamily: fontFamily,
      fontSize: 16,
      fontWeight: FontWeight.w700,
    ),
    // Texte bouton texte.
    buttonText: TextStyle(
      fontFamily: fontFamily,
      fontSize: 16,
      fontWeight: FontWeight.w700,
    ),
  );
}
