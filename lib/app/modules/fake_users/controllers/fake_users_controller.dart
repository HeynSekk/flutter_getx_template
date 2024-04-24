import 'package:flutter_getx_template/app/core/base/base_controller.dart';
import 'package:flutter_getx_template/app/data/model/fake_api_related_data.dart';
import 'package:flutter_getx_template/app/data/repository/fake_repo.dart';
import 'package:get/get.dart';

class FakeUsersController extends BaseController {
  final FakeRepo _fakeRepo = Get.find<FakeRepo>();
  Rx<bool> dataReady = false.obs;
  late UserResponse fakeUser;

  final count = 0.obs;
  @override
  void onInit() {
    _getFakeUser2();
    super.onInit();
  }

  void _getFakeUser2() {
    _getFakeUser("2");
  }

  void _getFakeUser(String id) {
    callDataService(
      _fakeRepo.getUserById(
        id,
      ),
      onSuccess: (data) {
        _handleUserData(data);
      },
      //no need to do special handle for onError
      //already handled in base controller call data service function
    );
  }

  void _handleUserData(UserResponse data) {
    fakeUser = data;
    dataReady.value = true;
  }

  @override
  void onClose() {
    print('on close');
    super.onClose();
  }
}
