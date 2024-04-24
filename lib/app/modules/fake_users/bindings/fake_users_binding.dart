import 'package:get/get.dart';

import '../controllers/fake_users_controller.dart';

class FakeUsersBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FakeUsersController>(
      () => FakeUsersController(),
    );
  }
}
