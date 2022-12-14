import 'package:flutter/material.dart';
import 'package:streaming_app/presentation/src/core/theme/color/app_color_theme_data.dart';
import 'package:streaming_app/presentation/src/core/theme/font/app_font_theme_data.dart';
import 'package:streaming_app/presentation/src/core/theme/theme_extension.dart';

class WelcomeCard extends StatelessWidget {
  const WelcomeCard({super.key});

  @override
  Widget build(BuildContext context) {
    final AppColorThemeData color = context.getColorThemeData();

    return SizedBox(
      height: 220,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            height: 200,
            width: double.infinity,
            padding: const EdgeInsets.all(8.0),
            child: Card(
              color: color.red,
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    _Title(),
                    _Button(),
                  ],
                ),
              ),
            ),
          ),
          const _Image(),
        ],
      ),
    );
  }
}

class _Image extends StatelessWidget {
  const _Image({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 0,
      top: 0,
      child: Image.asset(
        'assets/images/welcome.png',
        fit: BoxFit.cover,
        height: 210,
      ),
    );
  }
}

class _Title extends StatelessWidget {
  const _Title({super.key});

  @override
  Widget build(BuildContext context) {
    final AppFontThemeData font = context.getTextThemeData();
    final AppColorThemeData color = context.getColorThemeData();

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '20% off 👋',
          style: font.headline3.copyWith(color: color.white),
        ),
        const SizedBox(height: 4.0),
        Text(
          'For any Disney movies',
          style: font.bodyText1.copyWith(color: color.white),
        ),
        const SizedBox(height: 8.0),
      ],
    );
  }
}

class _Button extends StatelessWidget {
  const _Button({super.key});

  @override
  Widget build(BuildContext context) {
    final AppFontThemeData font = context.getTextThemeData();
    final AppColorThemeData color = context.getColorThemeData();

    return ElevatedButton(
      onPressed: () async => print('Join now printed'),
      style: ButtonStyle(
        elevation: MaterialStateProperty.all<double>(0),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18.0),
          ),
        ),
        backgroundColor: MaterialStateProperty.all<Color>(color.black),
      ),
      child: Text(
        'Join Now!',
        style: font.button.copyWith(color: color.white),
      ),
    );
  }
}
