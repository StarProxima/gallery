// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_element, unnecessary_cast

part of 'app_colors.dart';

// **************************************************************************
// TailorAnnotationsGenerator
// **************************************************************************

class AppColors extends ThemeExtension<AppColors> {
  const AppColors({
    required this.accent,
    required this.black,
    required this.grayLight,
    required this.subTitle,
    required this.text,
    required this.title,
    required this.transperent,
    required this.white,
  });

  final Color accent;
  final Color black;
  final Color grayLight;
  final Color subTitle;
  final Color text;
  final Color title;
  final Color transperent;
  final Color white;

  static final AppColors light = AppColors(
    accent: _$AppColors.accent[0],
    black: _$AppColors.black[0],
    grayLight: _$AppColors.grayLight[0],
    subTitle: _$AppColors.subTitle[0],
    text: _$AppColors.text[0],
    title: _$AppColors.title[0],
    transperent: _$AppColors.transperent[0],
    white: _$AppColors.white[0],
  );

  static final themes = [
    light,
  ];

  @override
  AppColors copyWith({
    Color? accent,
    Color? black,
    Color? grayLight,
    Color? subTitle,
    Color? text,
    Color? title,
    Color? transperent,
    Color? white,
  }) {
    return AppColors(
      accent: accent ?? this.accent,
      black: black ?? this.black,
      grayLight: grayLight ?? this.grayLight,
      subTitle: subTitle ?? this.subTitle,
      text: text ?? this.text,
      title: title ?? this.title,
      transperent: transperent ?? this.transperent,
      white: white ?? this.white,
    );
  }

  @override
  AppColors lerp(covariant ThemeExtension<AppColors>? other, double t) {
    if (other is! AppColors) return this as AppColors;
    return AppColors(
      accent: Color.lerp(accent, other.accent, t)!,
      black: Color.lerp(black, other.black, t)!,
      grayLight: Color.lerp(grayLight, other.grayLight, t)!,
      subTitle: Color.lerp(subTitle, other.subTitle, t)!,
      text: Color.lerp(text, other.text, t)!,
      title: Color.lerp(title, other.title, t)!,
      transperent: Color.lerp(transperent, other.transperent, t)!,
      white: Color.lerp(white, other.white, t)!,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AppColors &&
            const DeepCollectionEquality().equals(accent, other.accent) &&
            const DeepCollectionEquality().equals(black, other.black) &&
            const DeepCollectionEquality().equals(grayLight, other.grayLight) &&
            const DeepCollectionEquality().equals(subTitle, other.subTitle) &&
            const DeepCollectionEquality().equals(text, other.text) &&
            const DeepCollectionEquality().equals(title, other.title) &&
            const DeepCollectionEquality()
                .equals(transperent, other.transperent) &&
            const DeepCollectionEquality().equals(white, other.white));
  }

  @override
  int get hashCode {
    return Object.hash(
      runtimeType.hashCode,
      const DeepCollectionEquality().hash(accent),
      const DeepCollectionEquality().hash(black),
      const DeepCollectionEquality().hash(grayLight),
      const DeepCollectionEquality().hash(subTitle),
      const DeepCollectionEquality().hash(text),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(transperent),
      const DeepCollectionEquality().hash(white),
    );
  }
}
