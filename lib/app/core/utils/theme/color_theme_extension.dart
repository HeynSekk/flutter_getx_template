import 'package:flutter/material.dart';

class ColorThemeExtension extends ThemeExtension<ColorThemeExtension> {
  final Color customColor;

  // private constructor (use factories below instead):
  const ColorThemeExtension._internal({
    required this.customColor,
  });

  // factory for light mode:
  factory ColorThemeExtension.light() {
    return const ColorThemeExtension._internal(
      customColor: Colors.green,
    );
  }

  // factory for dark mode:
  factory ColorThemeExtension.dark() {
    return const ColorThemeExtension._internal(
      customColor: Colors.red,
    );
  }

  @override
  ThemeExtension<ColorThemeExtension> copyWith({bool? lightMode}) {
    if (lightMode == null || lightMode) {
      return ColorThemeExtension.light();
    }

    return ColorThemeExtension.dark();
  }

  @override
  ThemeExtension<ColorThemeExtension> lerp(
          covariant ThemeExtension<ColorThemeExtension>? other, double t) =>
      this;
}
