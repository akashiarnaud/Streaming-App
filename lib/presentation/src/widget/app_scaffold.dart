import 'package:flutter/material.dart';
import 'package:streaming_app/presentation/src/core/theme/color/app_color_theme_data.dart';
import 'package:streaming_app/presentation/src/core/theme/theme_extension.dart';

/// Usage :
/// ```dart
/// AppScaffold(
///   body: Container(),
/// )
/// ```
class AppScaffold extends StatelessWidget {
  ///
  final Widget body;

  ///
  final Widget? bottomNavigationBar;

  ///
  final Widget? floatingActionButton;

  ///
  final FloatingActionButtonLocation? floatingActionButtonLocation;

  const AppScaffold({
    super.key,
    required this.body,
    this.bottomNavigationBar,
    this.floatingActionButton,
    this.floatingActionButtonLocation,
  });

  @override
  Widget build(BuildContext context) {
    final AppColorThemeData color = context.getColorThemeData();

    return SafeArea(
      child: Scaffold(
        backgroundColor: color.greyLight,
        body: body,
        bottomNavigationBar: bottomNavigationBar,
        floatingActionButtonLocation: floatingActionButtonLocation,
        floatingActionButton: floatingActionButton,
      ),
    );
  }
}
