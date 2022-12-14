import 'package:flutter/material.dart';
import 'package:streaming_app/presentation/src/core/router/app_router.gr.dart';
import 'package:streaming_app/presentation/src/core/theme/theme.dart';

final AppRouter _router = AppRouter();

/// Usage :
/// ```dart
/// Application()
/// ```
class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return AppTheme(
      child: Builder(
        builder: (context) => MaterialApp.router(
          title: 'Streaming Application',
          routeInformationParser: _router.defaultRouteParser(),
          routerDelegate: _router.delegate(),
          theme: Theme.of(context),
        ),
      ),
    );
  }
}
