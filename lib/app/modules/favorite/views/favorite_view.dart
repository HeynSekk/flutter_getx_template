import 'package:flutter/material.dart';
import 'package:flutter_getx_template/app/core/values/app_values.dart';
import 'package:flutter_getx_template/app/routes/app_pages.dart';
import 'package:flutter_getx_template/app/widgets/button.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

import '/app/core/base/base_view.dart';
import '/app/core/widget/custom_app_bar.dart';
import '/app/modules/favorite/controllers/favorite_controller.dart';

class FavoriteView extends BaseView<FavoriteController> {
  @override
  PreferredSizeWidget? appBar(BuildContext context) {
    return const CustomAppBar(
      appBarTitleText: 'Favorite',
    );
  }

  @override
  //ignore: long-method
  Widget body(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          InkWell(
            onTap: () {
              Get.toNamed(Routes.FAKE_USERS);
            },
            child: Text(
              'Get to fake users',
              style: Get.context!.theme.textTheme.headlineSmall!
                  .copyWith(color: Get.context!.theme.colorScheme.onBackground),
            ),
          ),
          const SizedBox(
            height: AppValues.spaceM,
          ),
          CenteredTextButton.primary(
            label: 'Primary Button',
            onTap: () {
              Fluttertoast.showToast(msg: 'msg');
            },
            context: context,
          ),
          const SizedBox(
            height: AppValues.spaceM,
          ),
          CenteredTextButton.primary(
            label: 'Diabled Primary Button',
            isEnabled: false,
            onTap: () {
              Fluttertoast.showToast(msg: 'msg');
            },
            context: context,
          ),
          const SizedBox(
            height: AppValues.spaceM,
          ),
          CenteredTextButton.secondary(
            label: 'Secondary Button',
            onTap: () {
              Fluttertoast.showToast(msg: 'msg');
            },
            context: context,
          ),
          const SizedBox(
            height: AppValues.spaceM,
          ),
          CenteredTextButton.secondary(
            label: 'Disabled Secondary Button',
            isEnabled: false,
            onTap: () {
              Fluttertoast.showToast(msg: 'msg');
            },
            context: context,
          ),
        ],
      ),
    );
  }
}
