// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_element, unnecessary_cast

part of 'app_text_styles.dart';

// **************************************************************************
// TailorAnnotationsGenerator
// **************************************************************************

class AppTextStyles extends ThemeExtension<AppTextStyles> {
  const AppTextStyles({
    required this.main,
    required this.min,
    required this.title,
  });

  final TextStyle main;
  final TextStyle min;
  final TextStyle title;

  static final AppTextStyles light = AppTextStyles(
    main: _$AppTextStyles.main[0],
    min: _$AppTextStyles.min[0],
    title: _$AppTextStyles.title[0],
  );

  static final themes = [
    light,
  ];

  @override
  AppTextStyles copyWith({
    TextStyle? main,
    TextStyle? min,
    TextStyle? title,
  }) {
    return AppTextStyles(
      main: main ?? this.main,
      min: min ?? this.min,
      title: title ?? this.title,
    );
  }

  @override
  AppTextStyles lerp(covariant ThemeExtension<AppTextStyles>? other, double t) {
    if (other is! AppTextStyles) return this as AppTextStyles;
    return AppTextStyles(
      main: TextStyle.lerp(main, other.main, t)!,
      min: TextStyle.lerp(min, other.min, t)!,
      title: TextStyle.lerp(title, other.title, t)!,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AppTextStyles &&
            const DeepCollectionEquality().equals(main, other.main) &&
            const DeepCollectionEquality().equals(min, other.min) &&
            const DeepCollectionEquality().equals(title, other.title));
  }

  @override
  int get hashCode {
    return Object.hash(
      runtimeType.hashCode,
      const DeepCollectionEquality().hash(main),
      const DeepCollectionEquality().hash(min),
      const DeepCollectionEquality().hash(title),
    );
  }
}
