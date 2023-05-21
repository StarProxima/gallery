import 'package:flutter/material.dart';

import 'package:theme_tailor_annotation/theme_tailor_annotation.dart';

part 'app_colors.tailor.dart';

@Tailor(
  themes: ['light'],
  themeGetter: ThemeGetter.none,
)
class _$AppColors {
  static List<Color> accent = [const Color(0xFFED5992)];
  static List<Color> title = [const Color(0xFF2F1767)];
  static List<Color> subTitle = [const Color(0xFF8C8C8C)];
  static List<Color> grayLight = [const Color(0xFFC8C8C8)];

  static List<Color> text = [const Color(0xFF383838)];

  static List<Color> white = [const Color(0xFFFFFFFF)];
  static List<Color> black = [const Color(0xFF000000)];
  static List<Color> transperent = [const Color(0x00000000)];
}
