import 'package:flutter/material.dart';
import 'package:flutter_getx_template/app/core/base/base_view.dart';
import 'package:flutter_getx_template/app/core/utils/theme/theme_controller.dart';
import 'package:flutter_getx_template/app/core/utils/theme/theme_data_extensions.dart';
import 'package:flutter_getx_template/app/core/widget/custom_app_bar.dart';

import 'package:get/get.dart';

import '../controllers/fake_users_controller.dart';

class FakeUsersView extends BaseView<FakeUsersController> {
  final themeController = Get.find<ThemeController>();
  @override
  Widget body(BuildContext context) {
    return Center(
      child: Obx(
        () => controller.dataReady.value
            ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Name: ${controller.fakeUser.id}'),
                  Text('Last Name: ${controller.fakeUser.name}'),
                  Text('Email: ${controller.fakeUser.username}'),
                  Text(
                    'Sample text',
                    style:
                        // TextStyle(color: Theme.of(context).colorScheme.primary),
                        TextStyle(color: context.theme.colorScheme.primary),
                  ),
                  Text(
                    'Sample text with extended color',
                    style: TextStyle(
                        // color: Theme.of(context).extendedColors.customColor),
                        color: Get.theme.extendedColors.customColor),
                  ),
                  Obx(() {
                    return themeController.isDark.value
                        ? const Text('Dark mode is enabled')
                        : const Text('Light mode is enabled');
                  }),
                  Obx(() {
                    return Switch(
                      value: themeController.isDark.value,
                      onChanged: (v) {
                        themeController.changeTheme();
                      },
                    );
                  }),
                ],
              )
            : Container(),
      ),
    );
  }

  @override
  PreferredSizeWidget? appBar(BuildContext context) {
    return CustomAppBar(
      appBarTitleText: 'Fake Users',
    );
  }
}
