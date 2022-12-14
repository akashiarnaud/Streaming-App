import 'package:flutter/material.dart';
import 'package:streaming_app/presentation/src/core/theme/color/app_color_theme_data.dart';
import 'package:streaming_app/presentation/src/core/theme/font/app_font_theme_data.dart';

ThemeData buildTheme(
  BuildContext context,
  AppColorThemeData colorThemeData,
  AppFontThemeData fontThemeData,
) {
  return ThemeData(
    visualDensity: VisualDensity.adaptivePlatformDensity,
    fontFamily: fontFamily,
  );
}
