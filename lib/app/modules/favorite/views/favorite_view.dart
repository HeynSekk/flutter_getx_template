import 'package:flutter/material.dart';
import 'package:flutter_getx_template/app/routes/app_pages.dart';
import 'package:get/get.dart';

import '/app/core/base/base_view.dart';
import '/app/core/values/text_styles.dart';
import '/app/core/widget/custom_app_bar.dart';
import '/app/modules/favorite/controllers/favorite_controller.dart';

class FavoriteView extends BaseView<FavoriteController> {
  @override
  PreferredSizeWidget? appBar(BuildContext context) {
    return CustomAppBar(
      appBarTitleText: 'Favorite',
    );
  }

  @override
  Widget body(BuildContext context) {
    return Center(
      child: InkWell(
        onTap: () {
          Get.toNamed(Routes.FAKE_USERS);
        },
        child: const Text(
          'Get to fake users',
          style: titleStyle,
        ),
      ),
    );
  }
}
