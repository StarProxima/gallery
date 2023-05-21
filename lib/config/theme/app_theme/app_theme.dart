import 'package:flutter/material.dart';

import '../app_colors/app_colors.dart';
import '../app_text_styles/app_text_styles.dart';

class AppTheme {
  static ThemeData themeByStyles({
    required AppColors colors,
    required AppTextStyles textStyles,
  }) {
    return ThemeData.light().copyWith(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(seedColor: colors.accent),
      scaffoldBackgroundColor: colors.white,
      primaryColor: colors.accent,
      appBarTheme: AppBarTheme(
        centerTitle: true,
        surfaceTintColor: colors.accent,
        titleTextStyle: textStyles.title,
        foregroundColor: colors.title,
      ),
      tabBarTheme: TabBarTheme(
        indicatorColor: colors.accent,
        labelStyle: textStyles.title,
        unselectedLabelStyle: textStyles.title,
        labelColor: colors.accent,
        // unselectedLabelColor: colors.subTitle,
        indicatorSize: TabBarIndicatorSize.label,
      ),
      chipTheme: ChipThemeData(
        backgroundColor: colors.accent,
        side: BorderSide.none,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(999),
        ),
        labelStyle: textStyles.min.copyWith(
          color: colors.white,
          overflow: TextOverflow.ellipsis,
        ),
      ),
      extensions: [
        colors,
        textStyles,
      ],
    );
  }
}
