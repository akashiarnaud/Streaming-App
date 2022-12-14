import 'package:flutter/widgets.dart';
import 'package:streaming_app/presentation/src/core/theme/color/app_color_theme.dart';
import 'package:streaming_app/presentation/src/core/theme/color/app_color_theme_data.dart';
import 'package:streaming_app/presentation/src/core/theme/font/app_font_theme.dart';
import 'package:streaming_app/presentation/src/core/theme/font/app_font_theme_data.dart';

extension AppBuildContext on BuildContext {
  AppColorThemeData getColorThemeData() {
    return dependOnInheritedWidgetOfExactType<AppColorTheme>()!.data;
  }

  AppFontThemeData getTextThemeData() {
    return dependOnInheritedWidgetOfExactType<AppFontTheme>()!.data;
  }
}
