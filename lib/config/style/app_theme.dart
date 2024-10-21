import 'package:flutter/material.dart';
import 'package:pokedex/config/style/app_colors.dart';
import 'package:pokedex/config/style/custom_theme.dart';

class PokedexLightTheme implements CustomTheme {
  @override
  ThemeExtension get customColorPalette => ThemeCustomColors(
        background: AppColors.background,
        foreground: AppColors.lightBlack,
        highlight: AppColors.highlight,
        onHighlight: AppColors.onHighlight,
        title: AppColors.lightBlack,
        body: AppColors.darkGrey,
      );

  @override
  ThemeData getTheme() {
    return ThemeData(
      colorScheme: const ColorScheme.light(
        primary: AppColors.bostonUniversityRed,
        onPrimary: Colors.white,
        secondary: AppColors.highlight,
        onSecondary: AppColors.onHighlight,
        tertiary: AppColors.lightGrey,
        onTertiary: AppColors.darkGrey,
        surface: AppColors.background,
        onSurface: AppColors.lightBlack,
      ),
      extensions: [customColorPalette],
    );
  }
}
