import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:theme_tailor_annotation/theme_tailor_annotation.dart';

part 'app_text_styles.tailor.dart';

@Tailor(
  themes: ['light'],
  themeGetter: ThemeGetter.none,
)
class _$AppTextStyles {
  static const _textColor = Color(0xFF383838);
  // static const _textColorBlue = Color(0xFF47A4F2);

  static List<TextStyle> title = [
    GoogleFonts.roboto(
      fontSize: 20,
      fontWeight: FontWeight.w500,
      color: _textColor,
    ),
  ];

  static List<TextStyle> main = [
    // TODO: Change font to SF Pro Display
    GoogleFonts.roboto(
      fontSize: 15,
      fontWeight: FontWeight.w400,
      color: _textColor,
    ),
  ];

  static List<TextStyle> min = [
    GoogleFonts.roboto(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: _textColor,
    ),
  ];
}
