import 'package:flutter/widgets.dart';

import 'app_font_theme_data.dart';

class AppFontTheme extends InheritedWidget {
  /// [_data] is used to define the set of specifications
  /// related to all texts.
  final AppFontThemeData _data;

  /// Getter from [_data].
  AppFontThemeData get data => _data;

  const AppFontTheme({
    Key? key,
    required AppFontThemeData data,
    required Widget child,
  })  : _data = data,
        super(key: key, child: child);

  @override
  bool updateShouldNotify(AppFontTheme oldWidget) {
    return oldWidget._data != _data;
  }

  static AppFontThemeData of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<AppFontTheme>()!._data;
  }
}
