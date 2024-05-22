import 'package:flutter/material.dart';
import 'package:flutter_getx_template/app/core/utils/theme/color_theme_extension.dart';
import 'package:flutter_getx_template/app/core/utils/theme/theme_values/material_color_scheme.dart';
import 'package:flutter_getx_template/app/core/utils/theme/theme_values/text_theme.dart';

// import 'theme_extension/app_gradient_theme.dart';
// import 'theme_extension/app_shaddow_theme.dart';

class AppTheme {
  static ThemeData get lightTheme => ThemeData.light(
        useMaterial3: true,
      ).copyWith(
        textTheme: appTextTheme,
        colorScheme: MaterialTheme.lightScheme().toColorScheme(),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
          titleTextStyle: TextStyle(
            color: Color(0xFF002022),
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          elevation: 0,
        ),
        extensions: [
          ColorThemeExtension.light(),
        ],
      );

  static ThemeData get darkTheme => ThemeData.dark(
        useMaterial3: true,
      ).copyWith(
        textTheme: appTextTheme,
        colorScheme: MaterialTheme.darkScheme().toColorScheme(),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
          titleTextStyle: TextStyle(
            color: Color.fromARGB(255, 255, 255, 255),
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          iconTheme: IconThemeData(
            color: Color.fromARGB(255, 255, 255, 255),
          ),
          elevation: 0,
        ),
        extensions: [
          ColorThemeExtension.dark(),
        ],
      );
}
