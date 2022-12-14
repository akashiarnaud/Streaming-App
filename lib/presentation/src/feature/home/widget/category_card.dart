import 'package:flutter/material.dart';
import 'package:streaming_app/presentation/src/core/theme/color/app_color_theme_data.dart';
import 'package:streaming_app/presentation/src/core/theme/theme_extension.dart';
import 'package:streaming_app/presentation/src/feature/home/model/streaming_model.dart';

import '../../../core/theme/font/app_font_theme_data.dart';
import '../../../utils/size_utils.dart';

class CategoryCard extends StatelessWidget {
  ///
  final StreamingModel data;

  ///
  final int index;

  ///
  final int length;

  const CategoryCard({
    super.key,
    required this.data,
    required this.index,
    required this.length,
  });

  @override
  Widget build(BuildContext context) {
    final AppColorThemeData color = context.getColorThemeData();
    final AppFontThemeData font = context.getTextThemeData();

    return Container(
      height: 172.0,
      width: 180.0,
      margin: EdgeInsets.only(
        left: index == 0 ? 30 : 15,
        right: index == length - 1 ? 30 : 0,
      ),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        color: color.white,
        boxShadow: [
          BoxShadow(
              blurRadius: 14.0,
              offset: const Offset(0, 3),
              color: color.grey.withOpacity(
                0.18,
              ))
        ],
      ),
      child: Column(
        children: [
          SizedBox(
            height: 80.0,
            width: 160.0,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12.0),
              child: Image.asset(
                'assets/images/${data.cover}',
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 12.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: SizeUtils.vertical! * 2.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  color: color.indigo.withOpacity(0.25),
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 7,
                ),
                child: Center(
                  child: Text(
                    data.genre,
                    style: font.bodyText1.copyWith(
                      fontSize: SizeUtils.horizontal! * 2.5,
                      color: color.indigo,
                    ),
                  ),
                ),
              ),
              Icon(
                Icons.favorite_outline,
                color: color.red,
                size: 16.0,
              ),
            ],
          ),
          const SizedBox(height: 8.0),
          Row(
            children: [
              Text(
                data.title,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: font.bodyText1.copyWith(
                  fontSize: SizeUtils.horizontal! * 4.0,
                  color: color.black,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
