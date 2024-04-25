import 'package:flutter/material.dart';
import 'package:flutter_getx_template/app/core/utils/theme/color_theme_extension.dart';

extension ThemeDataExtended on ThemeData {
  ColorThemeExtension get extendedColors => extension<ColorThemeExtension>()!;
}
