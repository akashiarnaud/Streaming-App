import 'package:flutter/material.dart';
import 'package:streaming_app/presentation/src/core/theme/theme_extension.dart';

import '../../../core/theme/color/app_color_theme_data.dart';
import '../../../core/theme/font/app_font_theme_data.dart';
import '../../../utils/size_utils.dart';

class CategoryTitle extends StatelessWidget {
  ///
  final String title;

  ///
  final IconData? icon;

  const CategoryTitle({
    super.key,
    required this.title,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    final AppFontThemeData font = context.getTextThemeData();
    final AppColorThemeData color = context.getColorThemeData();

    return Container(
      height: 40,
      padding: const EdgeInsets.symmetric(horizontal: 28.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                title,
                style: font.bodyText1.copyWith(
                  fontSize: SizeUtils.horizontal! * 4,
                ),
              ),
              const SizedBox(width: 12.0),
              Icon(icon, size: 16),
            ],
          ),
          Container(
            height: 2.0,
            width: 100.0,
            color: color.red,
          ),
        ],
      ),
    );
  }
}
