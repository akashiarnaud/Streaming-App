import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:streaming_app/presentation/src/core/theme/color/app_color_theme_data.dart';
import 'package:streaming_app/presentation/src/core/theme/theme_extension.dart';

/// Usage :
/// ```dart
/// AppBottomNavigationBar(
///   body: Container(),
/// )
/// ```
class AppBottomNavigationBar extends StatelessWidget {
  ///
  final int selectedIndex;

  ///
  final void Function(int)? onTap;

  const AppBottomNavigationBar({
    super.key,
    required this.selectedIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final AppColorThemeData color = context.getColorThemeData();

    return BottomNavigationBar(
      backgroundColor: color.white,
      items: [
        BottomNavigationBarItem(
          icon: selectedIndex == 0 ? SvgPicture.asset('assets/home_selected.svg') : SvgPicture.asset('assets/home_unselected.svg'),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: selectedIndex == 1 ? SvgPicture.asset('assets/cart_selected.svg') : SvgPicture.asset('assets/cart_unselected.svg'),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: selectedIndex == 2 ? SvgPicture.asset('assets/profile_selected.svg') : SvgPicture.asset('assets/profile_unselected.svg'),
          label: '',
        ),
      ],
      currentIndex: selectedIndex,
      onTap: onTap,
    );
  }
}
