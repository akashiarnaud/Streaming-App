import 'package:flutter/material.dart';
import 'package:streaming_app/presentation/src/core/theme/color/app_color_theme_data.dart';
import 'package:streaming_app/presentation/src/core/theme/theme_data.dart';

import 'color/app_color_theme.dart';
import 'font/app_font_theme.dart';
import 'font/app_font_theme_data.dart';

class AppTheme extends StatelessWidget {
  /// The Widget [child] takes the root of the widget tree.
  final Widget _child;

  /// [_colorTheme] is used to define all colors.
  final AppColorThemeData _colorTheme;

  /// [_fontTheme] is used to define
  /// all specifications related to texts (size, colour, weight).
  final AppFontThemeData _fontTheme;

  /// ThemeData [theme] is used to define a theme.
  final ThemeData? _theme;

  const AppTheme({
    super.key,
    required Widget child,
    AppColorThemeData colorTheme = AppColorThemeData.theme,
    AppFontThemeData fontTheme = AppFontThemeData.theme,
    ThemeData? theme,
  })  : _child = child,
        _colorTheme = colorTheme,
        _fontTheme = fontTheme,
        _theme = theme;

  @override
  Widget build(BuildContext context) {
    return AppColorTheme(
      data: _colorTheme,
      child: AppFontTheme(
        data: _fontTheme,
        child: Builder(
          builder: (context) {
            return Theme(
              data: _theme ?? buildTheme(context, _colorTheme, _fontTheme),
              child: _child,
            );
          },
        ),
      ),
    );
  }
}
