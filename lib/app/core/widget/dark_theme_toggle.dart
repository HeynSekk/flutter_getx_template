import 'package:flutter/material.dart';
import 'package:flutter_getx_template/app/core/utils/theme/theme_controller.dart';
import 'package:get/get.dart';

class DarkThemeToggle extends StatelessWidget {
  DarkThemeToggle({super.key});

  final themeController = Get.find<ThemeController>();

  @override
  Widget build(BuildContext context) {
    return Obx(
      () {
        return Switch(
          value: themeController.isDark.value,
          onChanged: (v) {
            themeController.changeTheme();
          },
        );
      },
    );
  }
}
