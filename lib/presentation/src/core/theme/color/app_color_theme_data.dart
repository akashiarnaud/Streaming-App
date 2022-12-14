import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_color_theme_data.freezed.dart';

@freezed
class AppColorThemeData with _$AppColorThemeData {
  const factory AppColorThemeData({
    required Brightness brightness,
    required Color red,
    required Color black,
    required Color white,
    required Color greyDark,
    required Color grey,
    required Color greyLight,
    required Color yellow,
    required Color blue,
    required Color indigo,
  }) = _AppColorThemeData;

  static const theme = AppColorThemeData(
    brightness: Brightness.light,
    red: Color(0xffFF5252),
    black: Color(0xFF000000),
    white: Color(0xFFFFFFFF),
    greyDark: Color(0xFF9398A1),
    grey: Color(0xFFE9EAEC),
    greyLight: Color(0xFFF6F6F9),
    yellow: Color(0xFFF6B928),
    blue: Color(0xFFF02848),
    indigo: Color(0xFF2BBBA7),
  );
}
