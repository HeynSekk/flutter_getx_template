import 'package:flutter/material.dart';
import 'package:flutter_getx_template/app/core/base/base_view.dart';
import 'package:flutter_getx_template/app/core/widget/custom_app_bar.dart';

import 'package:get/get.dart';

import '../controllers/fake_users_controller.dart';

class FakeUsersView extends BaseView<FakeUsersController> {
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
