import 'package:flutter/widgets.dart';

import 'app_color_theme_data.dart';

class AppColorTheme extends InheritedWidget {
  final AppColorThemeData _data;

  AppColorThemeData get data => _data;

  const AppColorTheme({
    Key? key,
    required AppColorThemeData data,
    required Widget child,
  })  : _data = data,
        super(key: key, child: child);

  @override
  bool updateShouldNotify(AppColorTheme oldWidget) {
    return oldWidget._data != _data;
  }

  static AppColorThemeData of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<AppColorTheme>()!._data;
  }
}
