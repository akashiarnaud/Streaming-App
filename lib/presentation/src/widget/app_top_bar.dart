import 'package:flutter/material.dart';
import 'package:streaming_app/presentation/src/core/theme/theme_extension.dart';

import '../core/theme/color/app_color_theme_data.dart';

/// Usage :
/// ```dart
/// AppTopBar()
/// ```
class AppTopBar extends StatelessWidget {
  const AppTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    final AppColorThemeData color = context.getColorThemeData();

    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 28.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Icon(
            Icons.menu,
            size: 32.0,
          ),
          CircleAvatar(
            radius: 20.0,
            backgroundColor: color.red,
            backgroundImage: const NetworkImage(
              'https://sbcf.fr/wp-content/uploads/2018/03/sbcf-default-avatar.png',
            ),
          )
        ],
      ),
    );
  }
}
