import 'package:flutter/material.dart';
import 'package:flutter_getx_template/app/core/base/base_controller.dart';
import 'package:get/get.dart';

class ThemeController extends BaseController {
  Rx<bool> isDark = false.obs;

  void changeTheme() {
    if (isDark.value) {
      //change to light
      Get.changeThemeMode(ThemeMode.light);
    } else {
      //change to dark
      Get.changeThemeMode(ThemeMode.dark);
    }
    isDark.value = !isDark.value;
  }
}
